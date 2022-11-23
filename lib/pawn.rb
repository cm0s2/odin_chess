# frozen_string_literal: true

require_relative 'piece'

class Pawn < Piece
  def initialize(color)
    super(color)
    @unicode_characters = { white: '♙', black: '♟︎' }
  end

end
