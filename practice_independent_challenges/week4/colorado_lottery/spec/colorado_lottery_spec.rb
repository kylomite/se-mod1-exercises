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
        @grace = Contestant.new({
                first_name: 'Grace',
                last_name: 'Hopper',
                age: 20,
                state_of_residence: 'CO',
                spending_money: 20})
        @alexander.add_game_interest('Pick 4')
        @alexander.add_game_interest('Mega Millions')
        @frederick.add_game_interest('Mega Millions')
        @winston.add_game_interest('Cash 5')
        @winston.add_game_interest('Mega Millions')
        @benjamin.add_game_interest('Mega Millions')
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

    describe '#interested_and_18?()' do
        it 'it returns true if a contestant is interested and 18 or older' do
            expect(@lottery.interested_and_18?(@alexander, @pick_4)).to eq(true)
        end
        
        it 'it returns false if a contestant is either not interested or under 18' do
            expect(@lottery.interested_and_18?(@benjamin, @mega_millions)).to eq(false) # NOT >= 18
            expect(@lottery.interested_and_18?(@alexander, @cash_5)) # NOT INTERESTED
        end
    end

    describe '#can_register?' do
        it 'will return true if the contestant lives in the under a games juristiction && is intersted' do
            expect(@lottery.can_register?(@alexander, @pick_4)).to eq(true)
            expect(@lottery.can_register?(@frederick, @mega_millions)).to eq(true)
        end
        it 'will return false if the contestant doesnt live in the under a games juristiction' do
            expect(@lottery.can_register?(@alexander, @cash_5)).to eq(false) # NOT INTERESTED
            expect(@lottery.can_register?(@benjamin, @mega_millions)).to eq(false) #NOT 18
            expect(@lottery.can_register?(@frederick, @cash_5)).to eq(false) #NOT RESIDENT OF CO
        end
    end
    
    describe '#register_contestant()' do
        it 'will add contestant as a value of a game key in registered_contestants' do
            @lottery.register_contestant(@alexander, @mega_millions)
            @lottery.register_contestant(@winston, @mega_millions)
            expect(@lottery.registered_contestants).to eq({@mega_millions=> [@alexander, @winston]})
        end

        it 'will reject any contestant who cannot pass the #can_register() method' do
            expect(@lottery.registered_contestants).to eq({})
            @lottery.register_contestant(@alexander, @cash_5)

            expect(@lottery.registered_contestants).to eq({})
        end
    end

    describe '#eligible_contestants()' do
        it 'will return an array of contestants who have registered and have enough money to play the game' do
            luffy = Contestant.new({
                first_name: 'Monkey',
                last_name: 'Luffy',
                age: 18,
                state_of_residence: 'East Blue',
                spending_money: 0})
            luffy.add_game_interest('Mega Millions')
            @lottery.register_contestant(@frederick, @mega_millions)
            @lottery.register_contestant(luffy, @mega_millions)
            #binding.pry
            expect(@lottery.eligible_contestants(@mega_millions)).to eq([@frederick])
        end
    
    end

    describe '#charge_contesants()' do
        it 'will remove the cost of a game from every eligible contestants spending money' do
            @lottery.register_contestant(@frederick, @mega_millions)
            @lottery.charge_contesants(@frederick)
            @lottery.register_contestant(@winston, @mega_millions)
            @lottery.charge_contesants(@winston)
            
            expect(@fredrick.spending_money).to eq 19
            expect(@fredrick.spending_money).to eq 4
        end
    end
end
