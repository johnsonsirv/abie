class Injury < ActiveRecord::Base
	has_many :symptoms
	has_many :diseases
end