require_relative '../lib/candy'

class Bag
    attr_reader :candies,
                :count
    def initialize(candies = [], count = 0)
        @candies = candies
        @count = @candies.length
    end
    def empty?
        if @candies = []
            true
        else
            false
        end
    end
end