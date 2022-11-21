# frozen_string_literal: true

require_relative 'square'

class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) { Square.new }}
  end

  def reset!
    # White
    @grid.each do |file|
      file[1].piece = Pawn.new(false)
      file[6].piece = Pawn.new(true)
    end

    # Black
  end
end