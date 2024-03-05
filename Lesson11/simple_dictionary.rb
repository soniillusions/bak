loop do
words = {'apple' => 'яблоко',
'node' => 'узел', 'define' => 'определять', 'faint' => 'слабый', 'essential' => 'существенный', 'feather' => 'перо', 'inhabitant' => 'житель'}

puts "Введите слово на англ: "
answer = gets.strip

puts "Перевод: #{words[answer]}"
end