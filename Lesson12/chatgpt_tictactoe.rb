class TicTacToe
  def initialize
    @board = Array.new(9, " ")
    @winning_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
      [0, 4, 8], [2, 4, 6] # diagonals
    ]
    @current_player = "X"
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "---+---+---"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "---+---+---"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def switch_player
    @current_player = @current_player == "X" ? "O" : "X"
  end

  def get_player_move
    print "#{@current_player}, enter your move (1-9): "
    move = gets.chomp.to_i - 1
    until valid_move?(move)
      puts "Invalid move. Please enter a number between 1 and 9 that corresponds to an empty cell."
      print "#{@current_player}, enter your move (1-9): "
      move = gets.chomp.to_i - 1
    end
    move
  end

  def valid_move?(move)
    (0..8).include?(move) && @board[move] == " "
  end

  def check_win
    @winning_combinations.any? do |combination|
      combination.all? { |cell| @board[cell] == @current_player }
    end
  end

  def play
    loop do
      display_board
      move = get_player_move
      @board[move] = @current_player
      if check_win
        display_board
        puts "#{@current_player} wins!"
        break
      elsif @board.none? { |cell| cell == " " }
        display_board
        puts "It's a tie!"
        break
      else
        switch_player
      end
    end
  end
end

game = TicTacToe.new
game.play
