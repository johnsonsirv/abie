class DiagnosisController < ApplicationController
	
	post '/diagnose' do
		# use json data from client to perform diagnosis. and save inference to db
		# set a variable tha will be used by get to return the juust saved daiganosos
		# response stat is 200 then retun result
		# json json_params
		# json :done => 'done'
		d_data = json_params
		diagnosed_injury = Injury.find_by(code: d_data["d_injury"].to_i).name
		diagnosed_disease = Disease.find_by(symptoms: d_data["d_symptoms"]).name
		diagnosed_sym = Symptom.find_by(symptoms: d_data["d_symptoms"]).description
		
		inference = "if player exhibits symptoms #{diagnosed_sym}, in #{diagnosed_injury} affected area, then there is a #{diagnosed_disease} disease. "
		diagnosis = Diagnose.new(injury: diagnosed_injury, disease: diagnosed_disease, symptoms: diagnosed_sym, player: d_data["d_name"], inference: inference )
		
		if diagnosis.save
			json diagnosis
		else
			json :error => "Failed Diagnosis"
		end
	end
	
	get '/diagnoses/inference' do
		# return
	end
	
	def json_params
		JSON.parse(request.body.read)
	end
end