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

    describe '#add_activity()' do
        it 'adds argument to activities array' do
            activity_1 = Activity.new("Brunch")
            @reunion.add_activity(activity_1)
            expect(@reunion.activities).to eq([activity_1])
        end
    end

    describe '#total_reunion_cost' do
        it 'returns the total cost of all activites in the event' do
            activity_1 = Activity.new("Brunch")
            activity_1.add_participant("Luffy", 15)
            activity_1.add_participant("Zoro", 1)
            activity_1.add_participant("Nami", 50)
            activity_1.add_participant("Usopp", 15)

            activity_2 = Activity.new("Put-put")
            activity_2.add_participant("Luffy", 10)
            activity_2.add_participant("Zoro", 0)
            activity_2.add_participant("Nami", 75)
            activity_2.add_participant("Usopp", 12)

            activity_3 = Activity.new("Bounce House")
            activity_3.add_participant("Luffy", 20)
            activity_3.add_participant("Zoro", 10)
            activity_3.add_participant("Nami", 35)
            activity_3.add_participant("Usopp", 25)

            @reunion.add_activity(activity_1)
            @reunion.add_activity(activity_2)
            @reunion.add_activity(activity_3)

            expect(@reunion.total_reunion_cost).to eq(268)
        end
    end

    describe '#calculate_total_owed' do
        it 'returns a hash of KVPs with each key being a participant name, and its value equaling the total due related to them' do
            activity_1 = Activity.new("Brunch")
            activity_1.add_participant("Luffy", 15)
            activity_1.add_participant("Zoro", 1)
            activity_1.add_participant("Nami", 50)
            activity_1.add_participant("Usopp", 15)

            activity_2 = Activity.new("Put-put")
            activity_2.add_participant("Luffy", 10)
            activity_2.add_participant("Zoro", 0)
            activity_2.add_participant("Nami", 75)
            activity_2.add_participant("Usopp", 12)

            activity_3 = Activity.new("Bounce House")
            activity_3.add_participant("Luffy", 20)
            activity_3.add_participant("Zoro", 10)
            activity_3.add_participant("Nami", 35)
            activity_3.add_participant("Usopp", 25)

            @reunion.add_activity(activity_1)
            @reunion.add_activity(activity_2)
            @reunion.add_activity(activity_3)

            expected = {
                        "Luffy" => 21,
                        "Zoro" => 55,
                        "Nami" => -94,
                        "Usopp" => 14
                    }

            expect(@reunion.calculate_total_owed).to eq(expected)
        end
    end

    describe '#print_participants_dues' do
        it 'returns a summary of each participants name and what they owe, separated by a line break.' do
            activity_1 = Activity.new("Brunch")
            activity_1.add_participant("Luffy", 15)
            activity_1.add_participant("Zoro", 1)
            activity_1.add_participant("Nami", 50)
            activity_1.add_participant("Usopp", 15)

            activity_2 = Activity.new("Put-put")
            activity_2.add_participant("Luffy", 10)
            activity_2.add_participant("Zoro", 0)
            activity_2.add_participant("Nami", 75)
            activity_2.add_participant("Usopp", 12)

            activity_3 = Activity.new("Bounce House")
            activity_3.add_participant("Luffy", 20)
            activity_3.add_participant("Zoro", 10)
            activity_3.add_participant("Nami", 35)
            activity_3.add_participant("Usopp", 25)

            @reunion.add_activity(activity_1)
            @reunion.add_activity(activity_2)
            @reunion.add_activity(activity_3)

            expected = "Summary:
            Luffy owes $21,

            Zoro owes $55,

            Nami owes $-94,

            Usopp owes $14
            "
        end
    end
end