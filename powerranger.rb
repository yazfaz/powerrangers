class Person
	def initialize(name, caffeine_level)
		@name=name
		@caffeine_level=caffeine_level
	end

	def print_caffeine_level
		puts "Your caffeine level is #{@caffeine_level}."
	end
	
	def run
		puts "You ran 100 miles! Now you're very tired."
		@caffeine_level="low"
	end

	def scream
		if @caffeine_level=="low"
			puts "You are so tired you can't even scream."
		else
			puts "You screamed for 24 hours straight- now you're exhausted!"
			@caffeine_level="low"
		end
	end

	def drink_coffee
		if @caffeine_level=="low"
			puts "Woooo! You're so awake!"
			@caffeine_level="high"
		else 
			"You are too hyper! No more coffee for you!"
		end
	end	

	
end

class PowerRanger
end

class EvilNinja
end

p=Person.new("Yaz","low")
p.run
p.scream
p.drink_coffee
p.print_caffeine_level
