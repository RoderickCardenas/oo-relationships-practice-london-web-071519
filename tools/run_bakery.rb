require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

b1 = Bakery.new("Hummingbird Bakery")
b2 = Bakery.new("Baked Joint")
b3 = Bakery.new("Gails")
b4 = Bakery.new("Cafe Concerto")
b5 = Bakery.new("Pattiserie Valerie")

d1 = Dessert.new("Brownie", b1)
d2 = Dessert.new("Cookies", b2)
d3 = Dessert.new("Cheesecake", b3)
d4 = Dessert.new("Pie", b4)
d5 = Dessert.new("Ice Cream", b5)

i1 = Ingredient.new("Chocolate Chips", d2, 50)
i2 = Ingredient.new("Cinnammon", d4, 50)
i3 = Ingredient.new("Crust", d4, 150)
i4 = Ingredient.new("Milk", d5, 200)
i5 = Ingredient.new("Cocoa", d1, 50)
i6 = Ingredient.new("Vanilla", d3, 60)


Pry.start