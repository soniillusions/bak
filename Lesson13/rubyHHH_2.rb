@hh = { }

def set_user options
  puts "This name is already in the book" if @hh[options[:name]]

  @hh[options[:name]]= [options[:age]]
end

def show_hash
 @hh.each do |key|
  age = @hh[key]
   puts "Name: #{key} \n Age: #{age}\n"
 end
end

loop do
  puts "Enter name: "
  name = gets.strip.capitalize

  if name == ''
    show_hash
  exit
  end

  puts "Enter age: "
  age = gets.to_i

  options = {:name => name, :age => age}

  set_user options
end
