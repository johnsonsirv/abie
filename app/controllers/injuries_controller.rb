class InjuryController < ApplicationController
	
	get '/injury' do
		injuries = Injury.all
		json injuries
	end
	
end