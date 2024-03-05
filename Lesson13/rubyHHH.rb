@hh = { }

def set_user options
  puts "Already exist!" if @hh[options[:name]]

  @hh[options[:name]]= options[:age]
end
 
def show_hash
 @hh.each do |key, value|
   puts "Name: #{key} \n Age: #{value}"
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
