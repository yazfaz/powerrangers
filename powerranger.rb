class Person
	attr_accessor :name, :caffeine_level
	def initialize(name, caffeine_level)
		@name=name
		@caffeine_level=caffeine_level
	end

	def to_s()
		"My name is #{@name} and my caffeine level is #{@caffeine_level}."
	end
	# This now prints out in the cause_mayhem method in class EvilNinja instead of the person object just printing out id #
	
	def print_caffeine_level
		puts "Your caffeine level is #{@caffeine_level}."
	end
	
	def run
		puts "You ran 100 miles! Now you're very tired."
		@caffeine_level="0"
	end

	def scream
		if @caffeine_level <= "3"
			puts "You are so tired you can't even scream."
		else
			puts "You screamed for 24 hours straight- now you're exhausted!"
			@caffeine_level="0"
		end
	end

	def drink_coffee
		if @caffeine_level <= "3"
			puts "Woooo! You're so awake!"
			@caffeine_level = "3"
		else 
			"You are too hyper! No more coffee for you!"
		end
	end	

	
end

class PowerRanger < Person
	def initialize(strength, color)
		super(name,caffeine_level)
		@strength=strength
		@color=color
	end

	def punch(person_hit)
		if @strength > "5"
			puts "You're so strong! #{person_hit} screamed and ran away!"
			@caffeine_level="0"
		else
			puts "You're too weak. #{person_hit} just laughed at your weak attempt at a punch."
		end
	end

	def rest
		if @caffeine_level <= "3"
			puts "You are so tired, you hibernate for the winter."
			@caffeine_level = "5"
		else
			puts "You're not tired, stop being lazy!"
		end
	end
	
	def use_megazord (person_hit_megazord)
		puts "Boom! #{person_hit_megazord} ran away crying from your superpower 5000 strength hit!"
		@caffeine_level="0"
	end
	def fight (p1,p2,pr1,en1,en2)
		puts "Everyone is fighting! It's chaos!"
		p1.caffeine_level="0"
		p2.caffeine_level="0"
		pr1.caffeine_level="0"
		# pr2.caffeine_level="0"
		en1.caffeine_level="0"
		en2.caffeine_level="0"	
	end
end

class EvilNinja < Person 
	def initialize (strength, evilness)
		super(name, caffeine_level)
		@strength=strength
		@evilness=evilness

	end

	def punch(person_hit)
		if @strength > "5"
			puts "You're so strong! #{person_hit} screamed and ran away!"
			@caffeine_level="low"
		else
			puts "You're too weak. #{person_hit} just laughed at your weak attempt at a punch."
		end
	end
	
	
	def cause_mayhem(person_name)
		person_name.caffeine_level="0"
		# puts "Evilness! #{name} caused so much mayhem and now #{person_name.name} is so tired their energy level is #{@caffeine_level.caffeine_level}"
		puts "So much evil mayhem! Now #{person_name.name} is so tired their energy level is #{person_name.caffeine_level}!"
	end
	
	def fight (p1,p2,pr1,pr2,en1)
		puts "Everyone is fighting! It's chaos!"
		p1.caffeine_level="0"
		p2.caffeine_level="0"
		pr1.caffeine_level="0"
		pr2.caffeine_level="0"
		en1.caffeine_level="0"
		# en2.caffeine_level="0"	
	end
end

person1=Person.new("Yaz","0")
p2=Person.new("Kristine", "5")

# p.run
# p.scream
# p.drink_coffee
# p.print_caffeine_level
# p.scream
# p.print_caffeine_level

pr1=PowerRanger.new("5","blue")
pr2=PowerRanger.new("2", "red")
# pr1.punch('name')
# rest.class
pr1.use_megazord("Bob")
pr1.print_caffeine_level
pr1.rest
pr1.print_caffeine_level
# pr1.drink_coffee
# pr1.print_caffeine_level

en1=EvilNinja.new("8","very evil")
en2=EvilNinja.new("3", "not that evil")
# evil.punch("bob")
# evil.cause_mayhem(p)
# Person.caffeine_leve
en2.fight(person1,p2,pr1,pr2,en1)
p2.print_caffeine_level

pr1.fight(person1,p2,pr2,en1,en2)
pr1.print_caffeine_level
