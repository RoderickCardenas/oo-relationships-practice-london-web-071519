require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("guest1")
g2 = Guest.new("guest2")
g3 = Guest.new("guest3")
g4 = Guest.new("guest4")
g5 = Guest.new("guest5")
g6 = Guest.new("guest6")
g7 = Guest.new("guest7")

l1 = Listing.new("apartment1", "Mexico")
l2 = Listing.new("apartment2", "Colombia")
l3 = Listing.new("apartment3", "New York")
l4 = Listing.new("apartment4", "France")
l5 = Listing.new("apartment5", "Egypt")
l6 = Listing.new("apartment6", "Barcelona")
l7 = Listing.new("apartment7", "New Orleans")


t1 = Trip.new("Mexico",l1, g1)
t2 = Trip.new("Colombia",l2, g2)
t3 = Trip.new("New York",l3, g3)
t4 = Trip.new("France",l4, g4)
t5 = Trip.new("Egypt",l5, g5)
t6 = Trip.new("Barcelona",l6, g6)
t7 = Trip.new("New Orleans",l7, g7)
t8 = Trip.new("New York",l3, g1)
t9 = Trip.new("Egypt",l5, g1)
t10 = Trip.new("Barcelona",l6, g6)
t10 = Trip.new("New York",l3, g3)

Start.pry