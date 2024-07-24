require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Boat do 
    before(:each) do 
       @kayak = Boat.new(:kayak, 20)
    end

    describe '#initialize' do
        it 'will create an instance of a Boat object' do
            expect(@kayak).to be_a (Boat)
        end
        it 'has a symbol value showing its type' do
            expect(@kayak.type).to eq (:kayak)
        end
        it 'has a price per hour' do
            expect(@kayak.price_per_hour).to eq (20)
        end
    end
end