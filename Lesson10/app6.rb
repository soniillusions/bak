 

loop do

arr = [:rock, :scissors, :paper]

x = rand(0..2)

computer = arr[x]

print "Сделайте выбор: 1 - rock, 2 - scissors, 3 - paper - "
y = gets.to_i

player = arr[y - 1]

if computer == :rock && player == :scissors
	puts "You lose! Computer won!"
elsif computer == :rock && player == :paper
	puts "You won! Computer lose!"
elsif computer == :scissors && player == :rock
	puts "You won! Computer lose!"
elsif computer == :scissors && player == :paper
	puts "You lose! Computer won!"
elsif computer == :paper && player == :rock
	puts "You lose! Computer won!"
elsif computer == :paper && player ==:scissors
	puts "You won! Computer lose!"
elsif computer == player
	puts "Ничья!"
end

puts "Computer chose: #{computer}"

puts "Press 'Enter' to contine or 'Ctrl + O' to exit" 
gets

sleep(0.5)

end