class SymptomController < ApplicationController
	
	get  '/symptoms/:injury_id' do |injury_id|
		symptoms = Symptom.select(:id, :code, :description).where(injury_id: injury_id)
		json symptoms
	end
		
end