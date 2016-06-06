require 'pry'
require 'rspec'
require 'capybara/rspec'

require_relative '../app.rb'

set :environment, :test
set :database, :test

ActiveRecord::Base.logger.level = 1

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
