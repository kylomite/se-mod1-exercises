require 'spec_helper'
require './lib/game'

RSpec.describe Game do
    before(:each) do
        @mega_millions = Game.new('Mega Millions', 5, true)
    end

    describe '#initialize()' do
        it 'is an instance of a Game' do
            expect(@mega_millions).to be_a(Game)
        end
        
        it 'has a name' do
            expect(@mega_millions.name).to eq('Mega Millions')
        end

        it 'has a cost' do
            expect(@mega_millions.cost).to eq(5)
        end

        it 'has a national_drawing boolean' do
            expect(@mega_millions.national_drawing?).to eq(true)
        end
    end
end