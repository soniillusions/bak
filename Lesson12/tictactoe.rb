def field
puts "#{@pole[0]} #{@pole[1]} #{@pole[2]}"
puts '---+---+---'
puts "#{@pole[3]} #{@pole[4]} #{@pole[5]}"
puts '---+---+---'
puts "#{@pole[6]} #{@pole[7]} #{@pole[8]}"
end

@pole = [ '| |', '| |', '| |', '| |',
  '| |', '| |', '| |', '| |', '| |' ]

win = [[1,2,3], [4,5,6], [7,8,9], 
[1,4,7], [2,5,8], [3,6,9], [3,2,1], [6,5,4], [9,8,7], [7,4,1], [8,5,2], [9,6,3], [1,5,9], [9,5,1], [3,5,7], [7,5,3]]

player1_win = []
player2_win = []

field

loop do

puts "================================="
print "First player move (1-9): "
player1 = gets.to_i
@pole[player1 - 1] = '|X|'
player1_win << player1
puts player1_win.inspect
  
field
  
if player1_win == win[0] || player1_win == win[1] || player1_win == win[2] || player1_win == win[3] || player1_win == win[4] || player1_win == win[5] || player1_win == win[6] || player1_win == win[7] || player1_win == win[8] || player1_win == win[9] || player1_win == win[10] || player1_win == win[11] || player1_win == win[12] || player1_win == win[13] || player1_win == win[14] || player1_win == win[15]
 puts "First player won!"
break
end

puts "================================="  
print "Second player move (1-9): "
player2 = gets.to_i
@pole[player2 - 1] = '|O|'
player2_win << player2
puts player2_win.inspect

field

if player2_win == win[0] || player2_win == win[1] || player2_win == win[2] || player2_win == win[3] || player2_win == win[4] || player2_win == win[5] || player2_win == win[6] || player2_win == win[7] || player2_win == win[8] || player2_win == win[9] || player2_win == win[10] || player2_win == win[11] || player2_win == win[12] || player2_win == win[13] || player2_win == win[14] || player2_win == win[15]
 puts "Second player won!"
break
end
  
end