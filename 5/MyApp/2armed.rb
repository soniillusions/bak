
print "Enter your deposit: "
money = gets.to_i

print "Enter bet amount: "
bet = gets.to_i


print "Enter number of rounds: "
num = gets.to_i

a = 0
b = 0
c = 0
d = 0
e = 0

print "Press 'Enter' to start the game"

num.times do 
money = money - bet

a = rand(0..9)
b = rand(0..9)
c = rand(0..9)

puts a
puts b
puts c

puts 

if a == b
end