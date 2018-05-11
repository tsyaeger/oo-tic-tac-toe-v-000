


class TicTacToe
  
  def initialize(board = [" "] * 9)
    @board = board
  end
  
  def ix
    @ix
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
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
  
  def input_to_index(user_input)
    @ix = user_input.to_i - 1
  end


  def position_taken?(location)
    @board[location] != " " && @board[location] != ""
  end
  
  
  def move(ix, current_player)
    @board[ix]= current_player
  end
  
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
    end


  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    ix = input_to_index(input)
    puts ix
    if valid_move?(ix)
      puts "valid"  
    
      current_player = current_player(board)
      move(ix,current_player)
      display_board(board)
    else
      turn(board)
    end
  end





end