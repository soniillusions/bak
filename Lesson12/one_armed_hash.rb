balance = 100

loop do
  
puts "Enter to start game: "
gets

hh = {'111' => '10', '222' => '20', '333' => '30', '444' => '40', '555' => '50', '666' => '60', '777' => '70',
    '888' => '80', '999' => '90'}

x = rand(100..999).to_s
 

if hh[x] == true
    balance = balance + hh[x].to_i
else
    balance = balance - 1
  end

puts "Number: #{x}" 
puts "Your balance is #{balance} dollars"

end