require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Renter do 
    before(:each) do 
       @renter = Renter.new("Monkey D Luffy", "1738173817381738")
    end

    describe '#initialize()' do
        it 'creates an instance of a Renter object' do
            expect(@renter).to be_a (Renter)
        end
        it 'has a name attribute' do
            expect(@renter.name).to eq ("Monkey D Luffy")
        end
        it 'has a credit_card_number attribute' do
            expect(@renter.credit_card_number).to eq ("1738173817381738")
        end
    end
end