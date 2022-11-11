=begin
(b) Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify 
delicious? to return false if the flavor is black licorice (but delicious? should still return true for all 
other flavors and for all non-JellyBean desserts).
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

class JellyBean < Dessert
    def initialize(name, calories, flavor)
     @name = name
     @calories = calories
     @flavor = flavor
    end
    def name
        @name
    end
    def calories
        @calories
    end
    def flavor
        @flavor
    end
    def delicious?
     if @flavor == "black licorice"
        return false
     else
        return Dessert.method_defined?(:calories)
     end
    end
    end

test = JellyBean.new('Jelly',300,'soup')

print(test.delicious?)