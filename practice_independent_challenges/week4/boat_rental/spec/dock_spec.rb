require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Dock do
    before(:each) do 
        @dock = Dock.new("Dock A", 4)
     end

     describe '#initialize()' do
        it 'is an instance of a Dock object' do
            expect(@dock).to be_a (Dock)
        end
        it 'has a name attribute' do
            expect(@dock.name).to eq ("Dock A")
        end
        it 'has a max_rental_time attribute' do
             expect(@dock.max_rental_time).to eq 4
        end
     end
end