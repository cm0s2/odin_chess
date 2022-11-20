class Square

  attr_reader :piece

  def initialize(piece = nil)
    @piece = piece
  end

  def empty?
    @piece.nil?
  end
end