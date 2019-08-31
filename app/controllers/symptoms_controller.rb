class SymptomController < ApplicationController
	
	get  '/symptoms/:injury_id' do |injury_id|
		symptoms = Symptom.select(:id, :code, :description, :injury_id).all
		json symptoms
	end
		
end