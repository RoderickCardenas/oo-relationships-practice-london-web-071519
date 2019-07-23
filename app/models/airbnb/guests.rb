class Guest
    attr_accessor :name, :times_travelled

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def my_trips
        my_trips = Trip.all.select {|trip| trip.guest == self}
    end

    def listings
        my_trips.map {|trip| trip.listing}
    end

    def trips
        my_trips.map {|trip| trip}
    end

    def cities
        my_trips.map {|trip| trip.trip}
    end

    def trip_count
        my_trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        #returns an array of all guests who have made over 1 trip
        # Guest.all.inject {|acc, guest| acc.my_trips.count < guest.my_trips.count ? acc = guest : acc}
        # binding.pry
        @@all.select {|trips| trips.my_trips.count > 1}
    end

    def self.find_all_by_name(name)
        @@all.select {|guests| guests.name == name}
    end
    
end