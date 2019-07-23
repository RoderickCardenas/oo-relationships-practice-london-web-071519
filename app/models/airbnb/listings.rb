class Listing
    attr_reader :listing, :guest, :city

    @@all = []

    def initialize(listing, city)
        @listing = listing
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select { |trip| trip.listing == self}
    end

    def guests
        #returns an array of all guests who have stayed at a listing
        trips.map {|trip| trip.guest}
    end

    def trip_count
        #returns the number of trips that have been taken to that listing
        trips.count
    end

    def self.find_all_by_city(city)
        #takes an argument of a city name (as a string) and returns all the listings for that city
        Listing.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        #finds the listing that has had the most trips
        Listing.all.inject {|acc, listing| listing.trips.length > acc.trips.length ? acc = listing : acc }
    end
end