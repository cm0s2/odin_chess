class Square

  attr_accessor :piece

  def initialize(piece = nil)
    @piece = piece
  end

  def empty?
    @piece.nil?
  end
end