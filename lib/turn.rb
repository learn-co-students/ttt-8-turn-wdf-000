def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i    #converts input string to index integer
  index = index - 1
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

def move(array, index, char = "X")
  array[index] = char
end

def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if(valid_move?(array, input) == true)
    move(array, input, "X")
  else
    turn(array)
  end
  display_board(array)

end
