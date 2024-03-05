book = {
	'cat' => ['кошка', 'кот'],
	'plant' => ['завод', 'растение', 'предприятие'],
	'elbow' => ['локоть', 'угольник']
}

puts "Enter the word: "
word = gets.strip

book[word].each do |tran|
	puts "переводится как: #{tran}"
end