source 'https://rubygems.org'
ruby '2.4.0'
gem 'sinatra'
gem 'sinatra-contrib',require: false
gem 'rerun', '~> 0.11.0'
gem 'activerecord' , :require => 'active_record'
gem 'sinatra-activerecord' , :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all' #=> Helps to load dependencies
gem 'pry'
gem 'thin'
gem 'shotgun'
gem 'rack-flash3'
gem 'sinatra-flash'

group :development do
	gem 'tux'
	gem 'sqlite3', '~> 1.3.6'
end

group :production do
	gem 'pg', '>= 0.20.0'
end
