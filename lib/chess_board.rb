# frozen_string_literal: true

# Class representation of chess board
# Keeps track of and updates the position of chess pieces throughout the game
class ChessBoard
  attr_accessor :board

  def initialize(board = new_board)
    @board = board
  end

  def move(starting, ending)
    board[ending] = board[starting]
    board[starting] = nil
  end
end