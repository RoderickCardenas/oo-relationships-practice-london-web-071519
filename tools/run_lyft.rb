require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

harry = Passenger.new("Harry")
darren = Passenger.new("Darren")
james = Passenger.new("James")
nick = Passenger.new("Nick")
elliot = Passenger.new("Elliott")

d1 = Driver.new("driver1")
d2 = Driver.new("driver2")
d3 = Driver.new("driver3")
d4 = Driver.new("driver4")
d5 = Driver.new("driver5")

r1 = Ride.new(24, d1, harry)
r2 = Ride.new(3, d2, darren)
r3 = Ride.new(26, d3, harry)
r4 = Ride.new(7, d4, james)
r5 = Ride.new(45, d5, harry)
r6 = Ride.new(20, d3, harry)

Pry.start
