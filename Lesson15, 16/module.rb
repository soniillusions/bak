module Humans
	class Manager
		def say_hi
			puts "Hi!"
		end

	end

	class Hipster
		def say_hi
			puts "Hiiii, yoo!"
		end
	end

	class JessiePinkman
		def say_hi
			puts "Hi, bitch!"
		end
	end
end

module Animal
	class Cat
		def say_meow
			puts "Meow"
		end
	end

	class Dog
		def say_woof
			puts "Woof-woof!"
		end
	end
end

human = Humans::Hipster.new
human.say_hi

animal = Animal::Cat.new
animal.say_meow
animal2 = Animal::Dog.new
animal2.say_woof

