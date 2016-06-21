

def display_board (board )
	puts " " +  board[0] + " | " + board[1] + " | " + board[2] + " "
	puts "-----------"
  puts " " +  board[3] + " | " + board[4] + " | " + board[5] + " "
	puts "-----------"
	puts " " +  board[6] + " | " + board[7] + " | " + board[8] + " "
end


def move ( board, coord, side="X")
  board[coord] = side
  display_board(board)
end

# code your #valid_move? method here

def valid_move?(board,index)
  if (index >= 0 && index <=8)
    if (position_taken?(board,index))
      return false
    else
      return true
    end
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

# code your #position_taken? method here!

def position_taken? (board,index)
  if ( board[index] == "X" || board[index] == "O" )
    return true
  else
    return false
  end
end

def input_to_index ( str )
  str.to_i - 1
end

def turn(board)
  tmp = true
  index = nil
  while(tmp)
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
    #until (valid_move?(board,index))

    if (valid_move?(board,index))
      tmp = false
    end
  end
  move(board,index,"X")
end
