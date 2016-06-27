def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if !valid_move?(board,index)
    turn(board)
  end
  move(board,index)
end

def valid_move?(board, index)
  if index >= 0 && index <=8 && board[index] !="X" && board[index] !="0"
    true
  else
    false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board.empty? || board[index] == "" || board[index] == " " || board[index]== nil
    false
  elsif board[index]=="X" || board[index] =="O"
    true
  end
end

def input_to_index(num)
 num.to_i - 1
end

def move(b,i,c = "X")
  b[i]=c
  display_board(b)
  #turn(b)
end
