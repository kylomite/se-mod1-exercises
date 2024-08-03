require 'pry'
require 'rspec'

RSpec.configure do |config| 
    config.formatter = :documentation 
end

require './lib/activity'