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
        output = {
            card_number: nil,
            amount: nil
        } 
        output[:card_number] = @rental_log[boat].credit_card_number
        output[:amount] = calculate_total(boat)
        output
    end

    def calculate_total(boat)
        #require'pry';binding.pry
        total = 0
        if @max_rental_time >= boat.hours_rented
            total = boat.price_per_hour * boat.hours_rented
        else
            total = boat.price_per_hour * @max_rental_time
        end
        total
    end

    def return(boat)
        @rental_log.delete(boat)
        price = calculate_total(boat)
    end
end