add_10 = lambda {|x| x + 10}

add_20 = lambda {|x| x + 20}

sub_5 = lambda {|x| x - 5}

hh = {
	111 => add_10, 
	222 => add_10, 
	333 => add_10, 
	444 => add_20, 
	555 => add_20,
	666 => add_20,
	777 => sub_5,
	888 => sub_5,
	999 => sub_5,
	000 => sub_5
}


balance = 1000


puts 'Enter your age: '
age = gets.to_i

if age < 18
	puts 'Sorry, try again later'
	sleep(3)
	exit
end

loop do 
	puts "Enter to next round"
	gets
    if balance <= 0
    	puts "Game Over"
    	sleep(3)
    	exit
    end

	puts "Balance: #{balance}"

	number = rand(100..999)
	puts "Number: #{number}"

	if hh[number]
		f = hh[number]
		balance = f.call balance
		puts "Lambda called"
	end
end








