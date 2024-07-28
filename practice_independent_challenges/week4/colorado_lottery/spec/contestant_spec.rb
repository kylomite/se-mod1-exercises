require 'spec_helper'

RSpec.describe Contestant do 
    before(:each) do
        @alexander = Contestant.new({first_name: 'Alexander',
                                      last_name: 'Aigiades',
                                      age: 28,
                                      state_of_residence: 'CO',
                                      spending_money: 10})
    end

    describe '#initialize()' do
        it 'should be an instance of Contestant' do
            expect(@alexander).to be_a(Contestant)
        end
        
        it 'has a first_name KVP' do
            expect(@alexander.first_name).to eq('Alexander')
        end

        it 'has a last name KVP' do
            expect(@alexander.last_name).to eq('Aigiades')
        end

        it 'has a age KVP' do
            expect(@alexander.age).to eq(28)
        end

        it 'has a state_of_residence KVP' do
            expect(@alexander.state_of_residence).to eq('CO')
        end

        it 'has a spending_money KVP' do
            expect(@alexander.spending_money).to eq(10)
        end

        it 'has an array of game interests initialized to be empty' do
            expect(@alexander.game_interests).to eq ([])
        end
    end

    describe 'full_name' do
        it 'returns the first and last name of the contestant' do
            expect(@alexander.full_name).to eq('Alexander Aigiades')
        end
    end

    describe 'out_of_state?' do
        it 'returns a boolean based on if the contestant lives in CO' do
            expect(@alexander.out_of_state?).to eq(false)
        end
    end

    describe '#add_game_interest()' do
        it 'adds the argument to the list of game interests' do
            mega_millions = Game.new('Mega Millions', 5, true)
            pick_4 = Game.new('Pick 4', 2)
            @alexander.add_game_interest(mega_millions)
            @alexander.add_game_interest(pick_4)
            expect(@alexander.game_interests).to eq([mega_millions, pick_4])
        end
    end
end
