# frozen_string_literal: true

class Piece
  def initialize(color)
    @killed = false
    @color = color
  end

  def killed?
    @killed
  end

  def kill!
    unless @killed
      @killed = true
    else
      raise RuntimeError.new "This piece has already been killed"
    end
  end

  def is_white?
    @color == :white
  end

  def to_s
    @unicode_characters[@color]
  end
end