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
        end
    end
end