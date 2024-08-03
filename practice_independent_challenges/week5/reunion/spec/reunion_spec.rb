require './spec/spec_helper'

RSpec.describe Activity do
    before(:each) do
        @reunion = Reunion.new("1406 BE")
    end

    describe '#initialize()' do
        it 'exists' do
            expect(@reunion).to be_a(Reunion)
        end

        it 'has a name' do
            expect(@reunion.name).to eq("1406 BE")
        end

        it 'has an activities array' do
            expect(@reunion.activities).to eq([])
        end
    end

    describe 'add_activity()' do
        it 'adds argument to activities array' do
            activity_1 = Activity.new("Brunch")
            @reunion.add_activity(activity_1)
            expect(@reunion.activities).to eq([activity_1])
        end
    end
end