# frozen_string_literal: true

require_relative 'square'
require_relative 'piecefactory'

class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) { Square.new }}
    reset!
  end

  def reset!
    # Pawns
    for idx in 0...8 do
      @grid[idx][1].piece = PieceFactory.build(:pawn, :black)
      @grid[idx][6].piece = PieceFactory.build(:pawn, :white)
    end

    # Black
    @grid[0][0].piece = PieceFactory.build(:rook, :black)
    @grid[1][0].piece = PieceFactory.build(:knight, :black)
    @grid[2][0].piece = PieceFactory.build(:bishop, :black)
    @grid[3][0].piece = PieceFactory.build(:queen, :black)
    @grid[4][0].piece = PieceFactory.build(:king, :black)
    @grid[5][0].piece = PieceFactory.build(:bishop, :black)
    @grid[6][0].piece = PieceFactory.build(:knight, :black)
    @grid[7][0].piece = PieceFactory.build(:rook, :black)

    # White
    @grid[0][7].piece = PieceFactory.build(:rook, :white)
    @grid[1][7].piece = PieceFactory.build(:knight, :white)
    @grid[2][7].piece = PieceFactory.build(:bishop, :white)
    @grid[3][7].piece = PieceFactory.build(:queen, :white)
    @grid[4][7].piece = PieceFactory.build(:king, :white)
    @grid[5][7].piece = PieceFactory.build(:bishop, :white)
    @grid[6][7].piece = PieceFactory.build(:knight, :white)
    @grid[7][7].piece = PieceFactory.build(:rook, :white)
  end

  def print_board
    bg_color = 42
    for file in 0...8 do
      for rank in 0...8 do
        print "\e[#{bg_color}m" if (rank + file) % 2 == 0
        square = @grid[rank][file]
        if square.piece.nil?
          print " "
        else
          print square.piece
        end
        print "\e[0m" if (rank + file) % 2 == 0
        puts if rank == 7
      end
    end
  end
end
