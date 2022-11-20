
# frozen_string_literal: true

require_relative '../lib/square'

describe Square do

  describe '#empty?' do
    context 'when no piece is occupying the square' do
      subject(:empty_square) {described_class.new }
      it 'returns true' do
        expect(empty_square).to be_empty
      end
    end

    context 'when a piece is occupying the square' do
      subject(:occupied_square) {described_class.new(pawn) }
      let(:pawn) { double('piece') }
      it 'returns false' do
        expect(occupied_square).not_to be_empty
      end
    end
  end

  describe '#piece' do
    context 'when no piece is occupying the square' do
      subject(:empty_square) {described_class.new }
      it 'returns nil' do
        expect(empty_square.piece).to be_nil
      end
    end

    context 'when a piece is occupying the square' do
      subject(:occupied_square) {described_class.new(pawn) }
      let(:pawn) { double('piece') }
      it 'returns the piece' do
        expect(occupied_square.piece).to eq(pawn)
      end
    
    end
  end

end