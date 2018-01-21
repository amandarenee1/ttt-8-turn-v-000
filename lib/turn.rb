def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 8
    return false
  elsif !position_taken?(board, index)
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else board[position] == "X" || "O"
    true
  end
end

def move(board, position, char="X")
  board[position] = char
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input_to_index = gets.strip
  
end
