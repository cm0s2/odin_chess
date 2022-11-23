# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/piece'
require_relative '../lib/pawn'

describe Board do

  describe '#get_piece' do
    # returns the piece at a specific coordinate
  end

  describe '#reset!' do
    let(:empty_board) { described_class.new }
    let(:grid) { empty_board.instance_variable_get(:@grid) }
    # Method that sets all pieces to initial position


    it 'populates the board with pieces' do
      empty_board.reset!
      piece = grid[0][6].piece
      p piece
      expect(piece).to be_an_instance_of(Pawn)
    end
  end

end