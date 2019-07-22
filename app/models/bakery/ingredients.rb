#ingredient belongs to desert
class Ingredient

    attr_accessor :name, :dessert, :calories, :bakery

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert_object
        self.dessert
    end

    def bakery_object
        Dessert.all.select {|dessert| dessert == self.dessert}
    end

    def self.find_by_name(ingredient)
        @@all.select {|allingredients| allingredients.name.include? ingredient}
    end
end