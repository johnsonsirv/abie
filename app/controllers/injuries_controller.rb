class InjuryController < ApplicationController
	
	get '/injury' do
		injuries = Injury.select(:id, :code, :name).all
		json injuries
	end
	
end