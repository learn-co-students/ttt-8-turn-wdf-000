def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "#{separator}"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "#{separator}"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position)
  return position.to_i - 1
end

def valid_move?(board, index)
  #index = input_to_index(position)

  unless index.between?(0,8)
    return false
  end

  if position_taken?(board[index])
    return false
  else
    return true
  end

end

def position_taken?(cell)
  if cell == "X" || cell == "O"
    return true
  else
    return false
  end
end

def move(board, index, character="X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  index = input_to_index(position)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
