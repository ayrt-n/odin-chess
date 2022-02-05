# frozen_string_literal: true

# Class containing Queen play logic
class Queen < ChessPiece
  def valid_moves(board)
    valid_moves = []

    queen_moves.each do |move|
      next_move = curr_position + move

      while move_valid?(board, next_move)
        valid_moves << next_move
        break if take?(board, next_move)

        next_move += move
      end
    end

    valid_moves
  end

  def to_s
    '♚'
  end

  private

  def queen_moves
    [up_and_down, side_to_side, diagonally].flatten
  end
end
