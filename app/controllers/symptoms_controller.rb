class SymptomController < ApplicationController
	
	get  '/symptoms/:injury_id' do |injury_id|
		symptoms = Symptom.select(:code, :description, :injury_id).take
		json symptoms
	end
		
end