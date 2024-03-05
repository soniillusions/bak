# Tic Tac Toe game in Ruby

# Define the game board
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# Define the winning combinations
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

# Define the method to display the game board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Define the method to get player input
def player_input(player)
  puts "Player #{player}, please enter a number between 1 and 9:"
  gets.chomp.to_i - 1
end

# Define the method to make a move
def make_move(board, position, player)
  board[position] = player
end

# Define the method to check if the game is won
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    return true if combo.all? { |i| board[i] == 'X' }
    return true if combo.all? { |i| board[i] == 'O' }
  end
  false
end

# Define the method to check if the game is a tie
def tie?(board)
  board.all? { |position| position == 'X' || position == 'O' }
end

# Define the main game loop
def play_game(board)
  current_player = 'X'
  until won?(board) || tie?(board)
    display_board(board)
    player_move = player_input(current_player)
    make_move(board, player_move, current_player)
    current_player = current_player == 'X' ? 'O' : 'X'
  end
  display_board(board)
  if won?(board)
    puts "Congratulations, #{current_player}! You won!"
  else
    puts "It's a tie!"
  end
end

# Start the game
play_game(board)
