RSpec.configure do |config| 
    config.formatter = :documentation 
end

require 'pry'
require './spec/contestant_spec'
require './spec/game_spec'