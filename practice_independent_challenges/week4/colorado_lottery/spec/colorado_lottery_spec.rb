require 'spec_helper'

RSpec.describe Coloradolottery do
    before(:each) do
        @lottery = Coloradolottery.new
        @pick_4 = Game.new('Pick 4', 2)
        @mega_millions = Game.new('Mega Millions', 5, true)
        @cash_5 = Game.new('Cash 5', 1)
        @alexander = Contestant.new({
            first_name: 'Alexander',
            last_name: 'Aigades',
            age: 28,
            state_of_residence: 'CO',
            spending_money: 10})

        @benjamin = Contestant.new({
            first_name: 'Benjamin',
            last_name: 'Franklin',
            age: 17,
            state_of_residence: 'PA',
            spending_money: 100})

        @frederick = Contestant.new({
            first_name:  'Frederick',
            last_name: 'Douglass',
            age: 55,
            state_of_residence: 'NY',
            spending_money: 20})

        @winston = Contestant.new({
            first_name: 'Winston',
            last_name: 'Churchill',
            age: 18,
            state_of_residence: 'CO',
            spending_money: 5})
    end
    describe '#initialize()' do
        it 'is an instance of  Colorado Lottery' do
            expect(@lottery).to be_a(Coloradolottery)
        end

        it 'is intitiated with a registered_contestants hash' do
            expect(@lottery.registered_contestants).to eq({})
        end

        it 'is intitiated with a winners array' do
            expect(@lottery.winners).to eq([])
        end

        it 'is intitiated with a current_contestants hash' do
            expect(@lottery.current_contestants).to eq({})
        end
    end
end