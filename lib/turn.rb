def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(array, index)
  valid = index.between?(0,8)
  if(position_taken?(array, index) == true || valid == false)
    false
  else
    true
  end
end

def position_taken?(array, index)
  if(array[index] == " " || array[index] == "" || array[index] == nil)
    false
  else
    true
  end
end
