#has many rides
class Passenger
    attr_accessor :name, :driver, :passenger

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def my_drivers
        drivers = []
        my_rides.each {|ride| drivers << ride.driver}
        drivers
    end

    def my_rides
        Ride.all.select {|rides| rides.passenger.name == self.name}
    end

    def total_distance
        total = 0
        my_rides.each do |ride|
            total += ride.distance
        end
        total
    end

    def self.premium_members
        self.all.select do |each_passenger|
            if each_passenger.total_distance > 100
                each_passenger
            end
        end
    end

    def self.all
        @@all
    end
end