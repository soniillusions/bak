class Book
  
  attr_accessor :hh
  attr_reader :last_person

def initialize
  @hh = {}
  last_person = ''
end
  
def add_person options
  if @hh[options[:name]]
   puts 'Error! The name is already in the book'
    return
  end
  
@hh[options[:name]] = options[:age]
  @last_person = options[:name]
end  

def show_all
  @hh.each do |key, value|
    puts "Name: #{key}"
    puts "Age: #{value}"
  end
end

  def last
    puts "last name: #{@last_person}"
  end
  
end

b = Book.new
b.add_person :name => 'Alex', :age => 30
b.add_person :name => 'Anna', :age => 22
b.add_person :name => 'Nastya', :age => 23
b.show_all
b.last