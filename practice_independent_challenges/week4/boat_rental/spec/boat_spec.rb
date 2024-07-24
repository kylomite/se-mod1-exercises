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
        it 'has an hours_rented attribute initilized at 0' do
            expeect(@kayak.hours_rented).to eq 0
        end
    end

    describe '#add_hour' do
        it 'will increment the amount of hours in hours_rented by 1' do
                
        end
    end

    describe '#hours_rented' do
        it 'will return the value of hours_rented'
    end
end