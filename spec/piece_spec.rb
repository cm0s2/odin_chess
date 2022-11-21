# frozen_string_literal: true

require_relative '../lib/piece'

describe Piece do

  describe '#killed?' do
    context 'when the piece is still alive' do
      let(:alive_piece) { described_class.new(true) }

      it 'returns false' do
        expect(alive_piece).not_to be_killed
      end
    end
    
    context 'when the piece has been killed' do
      let(:killed_piece) { described_class.new(true) }

      before do
        killed_piece.kill!
      end

      it 'returns true' do
        expect(killed_piece).to be_killed
      end
    end
  end

  describe '#kill!' do
    let(:alive_piece) { described_class.new(true) }

    context 'when an alive piece is killed' do
      it 'changes killed? to true' do
        expect { alive_piece.kill! }.to change { alive_piece.killed? }.to(true)
      end
    end

    context 'when an already killed piece is killed' do
      let(:dead_piece) { described_class.new(true) }

      before do
        dead_piece.kill!
      end

      it 'throws an exception error' do
        expect { dead_piece.kill! }.to raise_error(RuntimeError, "This piece has already been killed")
      end
    end
  end

  describe '#is_white?' do
    context 'when the color is white' do
      
    end
    
    context 'when the color is black' do
    end
  end
end