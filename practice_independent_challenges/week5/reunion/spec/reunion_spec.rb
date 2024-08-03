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
end