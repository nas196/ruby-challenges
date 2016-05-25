class Pet
 
    def set_name=(pet_name)
		@name = pet_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
    
    def squeek
		return "eeeep"
	end
    
    def tweet
        return "Polly want a cracker?"
	end
end
 
 
my_ferret = Pet.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
 
my_parrot = Pet.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name
 
my_chinchilla = Pet.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name
 
puts "#{ferret_name} says #{my_ferret.squeal}, 
#{parrot_name} says #{my_parrot.tweet}, 
and #{chinchilla_name} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect
