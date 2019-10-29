def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(num)
  num.to_i - 1
end


def move(board, index, letter = "X")
  board[index] = letter
  display_board(board)
end

def is_position_taken?(board, index)
  #is there already a value there? X or O?
  #board[index] == 'X' || board[index] == or
  if board[index] == 'X' || board[index] == 'O'
    return true
    else
    return false
  end
end

def is_move_valid?(board, index)
  !is_position_taken?(board, index) && index.between?(0, 8)
end

def turn(board)
  puts "Choose a position to play on the board:"
  user_input = gets.strip
  board_index = input_to_index(user_input)
    if is_move_valid?(board, board_index)
      move(board, board_index, "X")
    else
      puts "Invalid move"
      turn(board)
    end

end
