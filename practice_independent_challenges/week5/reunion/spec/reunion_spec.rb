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

    describe 'total_cost' do
        it 'returns the total cost of all activites in the event' do
            activity_1 = Activity.new("Brunch")
            activity_1.add_participant("Luffy", 15)
            activity_1.add_participant("Zoro", 1)
            activity_1.add_participant("Nami", 50)
            activity_1.add_participant("Usopp", 15)

            activity_2 = Activity.new("Put-put")
            activity_1.add_participant("Luffy", 10)
            activity_1.add_participant("Zoro", 0)
            activity_1.add_participant("Nami", 75)
            activity_1.add_participant("Usopp", 12)

            activity_3 = Activity.new("Bounce House")
            activity_1.add_participant("Luffy", 20)
            activity_1.add_participant("Zoro", 10)
            activity_1.add_participant("Nami", 35)
            activity_1.add_participant("Usopp", 25)

            @reunion.add_activity(activity_1)
            @reunion.add_activity(activity_2)
            @reunion.add_activity(activity_3)

            expect(@reunion.total_cost).to eq(268)
        end
    end
end