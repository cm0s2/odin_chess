# frozen_string_literal: true

require_relative 'pawn'
require_relative 'rook'
require_relative 'knight'
require_relative 'bishop'
require_relative 'king'
require_relative 'queen'

class PieceFactory
  def self.build(piece, is_white)
    case piece
    when :pawn
      Pawn.new(is_white)
    when :rook
      Rook.new(is_white)
    when :knight
      Knight.new(is_white)
    when :bishop
      Bishop.new(is_white)
    when :king
      King.new(is_white)
    when :queen
      Queen.new(is_white)
    end
  end
end



