#has many rides
class Driver
    attr_accessor :name, :driver, :passenger

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_rides
        Ride.all.select {|rides| rides.driver.name == self.name}
    end

    def total_distance
        total = 0
        my_rides.each do |ride|
            total += ride.distance
        end
        total
    end

    def self.mileage_cap(distance)
            self.all.select do |driver|
                if driver.total_distance > distance
                    driver
                end
            end
    end

end