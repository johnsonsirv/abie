class SymptomController < ApplicationController
	
	get  '/symptoms/:injury_id' do
		# return Symptom.find_by(:injury_id) to json
	end
		
end