say_hi = lambda {puts 'Hi!'}
say_bye = lambda {puts 'Bye!'}

weak = [say_hi, say_hi, say_hi, say_hi, say_hi, say_bye, say_bye]

weak.each do |f|
	f.call
end
