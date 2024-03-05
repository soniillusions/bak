class Book
  
def initialize
  @hh = { }
end

  def set_user options
    puts "Already exist!" if @hh[options[:name]]

    @hh[options[:name]]= options[:age]
  end
   
  def show_hash
   @hh.each do |key, value|
     puts "Name: #{key} \n Age: #{value}"
   end
  end

end

b = Book.new

b.set_user :name => "Andrew", :age => 50

b.show_hash


b2 = Book.new

b2.set_user :name => 'Oliver', :age => 35

b2.show_hash