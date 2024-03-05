puts "Enter your age: "
age = gets.to_i

if age < 18
  puts "Sorry, you can't play this game"
  exit
end

balance = 100

def anim
  1.upto(5) do 
  print "#{rand(1..5)}"
  print \r
  end 
end

def game
puts 'Enter to start'
balance = balance - 5


x = rand(1..5)
y = rand(1..5)
z = rand(1..5)

end
