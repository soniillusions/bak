loop do
puts "1 - rock, 2 - scissors, 3 - paper"

answer = gets.to_i

arr = [:rock, :scissors, :paper]
computer_choice = arr[rand(0..2)]

user_choice = arr[answer - 1]

puts "Computer choice: #{computer_choice}"
puts "User choice: #{user_choice}"

matrix = [
  [:rock, :rock, :draw],
  [:scissors, :scissors, :draw],
  [:paper, :paper, :draw],

  [:rock, :scissors, :first_win],
  [:rock, :paper, :second_win],

  [:scissors, :rock, :second_win],
  [:scissors, :paper, :first_win],

  [:paper, :rock, :first_win],
  [:paper, :scissors, :second_win]
]

matrix.each do |item|
  if item[0] == user_choice && item[1] == computer_choice 
    if item[2] == :first_win
      puts "You won!"
    elsif item[2] == :second_win
      puts "Computer won!"
    else
      puts "Draw!"
    end
  end
end
end