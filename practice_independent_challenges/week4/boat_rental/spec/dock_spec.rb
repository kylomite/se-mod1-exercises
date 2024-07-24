require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Dock do
    before(:each) do 
        @dock = Dock.new("Dock A", 4)
        @kayak_1 = Boat.new(:kayak, 20)
        @kayak_2 = Boat.new(:kayak, 20)
        @Going_Merrry = Boat.new(:caravel, 2000)
        @Luffy = Renter.new("Monkey D Luffy", "1738173817381738")
        @Zoro = Renter.new("Roanoa Zoro", "2407240724072407")

     end

     describe '#initialize()' do
        it 'is an instance of a Dock object' do
            expect(@dock).to be_a (Dock)
        end
        it 'has a name attribute' do
            expect(@dock.name).to eq ("Dock A")
        end
        it 'has a max_rental_time attribute' do
             expect(@dock.max_rental_time).to eq (4)
        end
        it 'has a rental_log attribute' do
            expect(@dock.rental_log.empty?()).to eq (true)
        end
     end

     describe '#rental_log' do
        it 'returns a rental_log hash which contains boats and renters' do
            expect(@dock.rental_log.empty?()).to eq (true)
            @dock.rent(@kayak_1, @Luffy)

            expect(@dock.rental_log.empty?()).to eq (false)
        end
     end

     describe '#rent()' do 
        it 'will add an entry to the rental_log based on the arguments' do
            expect(@dock.rental_log.empty?).to eq (true)
            @dock.rent(@kayak_1, @Luffy)

            expect(@dock.rental_log.empty?).to eq (false)
            @dock.rent(@kayak_2, @Zoro)
            expect(@dock.rental_log.empty?).to eq (false)
            expect(@dock.rental_log.keys.length).to eq (2)
        end
        it 'allows one renter to rent multiple boats' do
            @dock.rent(@kayak_1, @Zoro)
            @dock.rent(@kayak_2, @Zoro)
            @dock.rent(@Going_Merrry, @Luffy)

            expect(@dock.rental_log.keys.length).to eq (3)
        end

        describe '#charge()' do
            it 'will take a Boat as an argument' do 

            end

            it 'return a hash with 2 key/value pairs'do 

            end

            it 'shows the renters card number as a KVP'  do

            end

            it 'shows the amount that should be charged as a KVP'  do
            
            end
            
            it 'calculates amount value based on rental price and time rented' do

            end
            
            it 'will not produce an amount higher than whats possible based on the docks max_rental_time' do
                
            end
        end
     end
end