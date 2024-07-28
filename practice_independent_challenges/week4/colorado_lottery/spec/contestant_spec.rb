require 'spec_helper'
require './lib/contestant'

RSpec.describe Contestant do 
    before(:each) do
        @contestant = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})
    end
    describe '#initialize' do
        it 'should be an instance of Contestant' do
            expect(@contestant).to be_a(Contestant)
        end
        
        it 'has a first_name KVP' do
            expect(@contestant.first_name).to eq('Alexander')
        end

        it 'has a last name KVP' do
            expect(@contestant.last_name).to eq('Aigiades')
        end

        it 'has a age KVP' do
            expect(@contestant.age).to eq(28)
        end

        it 'has a state_of_residence KVP' do
            expect(@contestant.state_of_residence).to eq('CO')
        end

        it 'has a spending_money KVP' do
            expect(@contestant.spending_money).to eq(10)
        end
    end
end
