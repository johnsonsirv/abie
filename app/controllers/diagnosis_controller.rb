class DiagnosisController < ApplicationController
	
	post '/diagnose' do
		
		d_data = json_params
		diagnosed_injury = Injury.find_by(code: d_data["d_injury"].to_i).name
		diagnosed_disease = Disease.find_by(symptoms: d_data["d_symptoms"])
		diagnosed_sym = Symptom.find_by(code: d_data["d_symptoms"]).description
		treatment = treatment_and_lifestyle diagnosed_disease.code
		diagnosed_treatment = treatment.first
		diagnosed_lifestyle = treatment.second
		
		inference = "if player exhibits symptoms #{diagnosed_sym}, in #{diagnosed_injury} affected area, then there is a #{diagnosed_disease.name} disease."
		
		diagnosis = Diagnosis.new(injury: diagnosed_injury, disease: diagnosed_disease.name, symptoms: diagnosed_sym, player: d_data["d_name"], inference: inference, treatment: diagnosed_treatment, lifestyle: diagnosed_lifestyle)
		
		if diagnosis.save
			json diagnosis
		else
			status 422
		end
		
		
	end

	get '/diagnoses' do
		injuries = Diagnosis.select(:id, :player, :injury, :disease).all
		json injuries
	end
	
	def json_params
		JSON.parse(request.body.read)
	end
	
	def treatment_and_lifestyle (disease_code)
		treatment = Treatment.select(:description, :lifestyle).where(disease_code: disease_code)
		disease_treatment = []
		disease_lifestyle = []
		treatment.each do |t|
			disease_treatment << t.description
			disease_lifestyle << t.lifestyle
		end
		
		[disease_treatment.join('; '), disease_lifestyle.first]
	end
	
	
end