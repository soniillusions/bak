class Book

attr_accessor :hh

	def initialize
		@hh = {}
	end

def add_user options
	if @hh[options[:name]] puts "Already exist!" 
		return
	end
	@hh[options[:name]] = options[:age]
end

def show_users
	@hh.each do |key, value|
		puts "Name: #{key}, Age: #{value}"
	end
end

end

b = Book.new
b.add_user :name => 'Alex', :age => 30
b.add_user :name => 'Oliver', :age => 35
b.show_users