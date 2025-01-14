# a bakery has many desserts
class Bakery

    attr_reader :name, :dessert, :bakery

    @@all = []

    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
		ingredients = []
		our_desserts.each {|dessert| ingredients << dessert.ingredients}
		ingredients.flatten!
    end

    def our_desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end


    def average_calories
    ingredients.sum {|ingred| ingred.calories}
    end

    def shopping_list
    ingredients.map {|ingred| ingred.name}
    end
end