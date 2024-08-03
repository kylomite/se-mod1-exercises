require './spec/spec_helper'

RSpec.describe Activity do
    before(:each) do
        @activity = Activity.new("Brunch")    
    end

    describe '#initialize()' do
        it 'exists' do
            expect(@activity).to be_an(Activity)
        end
        it 'has a name' do
            expect(@activity.name).to eq('Brunch')
        end

        it 'has a participants hash' do
            expect(@activity.participants).to eq({})
        end
    end

    describe '#add_participant()' do
        it 'adds args as KVP in participants hash'  do
            @activity.add_participant("Maria", 20)
            expect(@activity.participants).to eq({"Maria" => 20})
            @activity.add_participant("Maria", 50)
            expect(@activity.participants).to eq({"Maria" => 70})
            @activity.add_participant("Luther", 40)
            expect(@activity.participants).to eq({"Maria" => 70, "Luther" => 40})
        end
    end

    describe '#total_cost' do
        it 'returns the sum of all values in participants hash' do
            @activity.add_participant("Maria", 20)
            @activity.add_participant("Luffy", 20)
            @activity.add_participant("James", 20)
            expect(@activity.total_cost).to eq(60)
        end
    end

    describe '#split' do
        it 'should return the total cost divided by the number of participants' do
            @activity.add_participant("Maria", 20)
            @activity.add_participant("Luffy", 40)
            expect(@activity.split).to eq(30)
        end
    end

    describe '#owed' do

    end
end