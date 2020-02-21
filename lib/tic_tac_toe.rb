class TicTacToe
  
  def initialize 
    @board = Array.new(9," ")
  end

  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(input, token="X")
    @board[input] = token
  end

  def position_taken?(input_to_index)
    if @board[input_to_index] == " "
      false
    else
     true
    end 
  end

  def valid_move?(index)
    if index <= 8 && @board[index] == " "
      true
    else
      false
    end
  end
  
  def turn_count 
    turn_number = 0
    @board.each do |board_space|
      if board_space != " "
        turn_number += 1 
      end
    end
    turn_number
  end
  
  def current_player
    if turn_count.odd?
      "X"
    else
      "O"
    end
  end
  
  
  def turn 
    puts "Which square would you like?"
    # user_input = gets.chomp
  end

end