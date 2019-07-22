#belongs to a passenger and a driver
#initialized with a distance(float)
class Ride
    attr_accessor :passenger, :distance, :driver

    @@all = []

    def initialize(distance, driver, passenger)
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def get_passenger
        self.passenger
    end

    def get_driver
        self.driver
    end

    def self.average_distance
        total = 0
        Ride.all.each {|ride| total += ride.distance}
        total / Ride.all.length
    end
end