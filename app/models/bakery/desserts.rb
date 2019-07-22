#dessert belongs to a bakery
#dessert has many ingredients
class Dessert

    attr_reader :name, :dessert, :bakery

    @@all = []

    def initialize(dessert, bakery)
        @dessert = dessert
        @bakery = bakery
        @@all << self
    end

    def ingredients
        Ingredient.all.select {|all| all.dessert.dessert == self.dessert}
    end

    def the_bakery
        self.bakery
    end

    def the_calories
        ingredients.sum {|dessert| dessert.calories}
    end

    def self.all
        @@all
    end
end