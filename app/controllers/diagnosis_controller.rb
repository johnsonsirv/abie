class DiagnosisController < ApplicationController
	
	post '/diagnose' do
		# use json data from client to perform diagnosis. and save inference to db
		# set a variable tha will be used by get to return the juust saved daiganosos
		# response stat is 200 then retun result
	end
	
	get '/diagnoses/inference' do
		# return
	end
	
end