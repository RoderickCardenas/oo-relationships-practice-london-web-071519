class Trip
    attr_accessor :listing, :guest, :trip

    @@all = []

    def initialize(trip, listing, guest)
        @trip = trip
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

    def my_trip_listing
        self.listing
    end

    def my_guest
        self.guest
    end
end