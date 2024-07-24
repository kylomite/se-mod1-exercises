class Dock
    attr_reader :name,
                :max_rental_time
    def initialize(name, max_rental_time)
        @name = name
        @max_rental_time = max_rental_time
        @rental_log = Hash.new(0)
    end

    def rent(boat, renter)
        @rental_log[boat] = renter
    end

    def rental_log
        @rental_log
    end

    def charge(boat)
        # output = {
        #     card_number: nil,
        #     amount: nil
        # } 
        # output[:card_number] = @rental_log.find do |object, details|
        #     object == renter
        # end
    end
end