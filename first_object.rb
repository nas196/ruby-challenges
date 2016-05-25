class Pets
    
    attr_accessor :name, :owner_name
   
end

class Dog < Pets
    
    def bark
        return "Woof! Woof! Arf!"
    end
end

class Cat < Pets
    
    def howl 
        return "Meow!"
    end
end
    

my_dog = Dog.new
my_dog.name= "Sonny"
dog_name = my_dog.name

my_cat = Cat.new
my_cat.name= "Keelah"
cat_name = my_cat.name

my_other_cat = Cat.new
my_other_cat.name = "Nubie"
other_cat = my_other_cat.name

puts "#{dog_name} says #{my_dog.bark}, #{cat_name} says #{my_cat.howl}, and #{other_cat} says #{my_cat.howl} too!"
puts my_dog.inspect
puts my_cat.inspect
puts my_other_cat.inspect