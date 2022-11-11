=begin
(a) Create a class Dessert with getters and setters for name and 
calories. Define instance methods healthy?, which returns true if a dessert has less than 200 
calories, and delicious?, which returns true for all desserts.
=end

class Dessert
    def initialize(name, calories)
     @name = name
     @calories = calories
    end
    def name
        @name
    end
    def calories
        @calories
    end
    def healthy?
        @calories < 200
    end
    def delicious?
        Dessert.method_defined?(:calories)
    end
end

test = Dessert.new('Jelly',300)

print(test.delicious?)