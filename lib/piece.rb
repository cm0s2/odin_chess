# frozen_string_literal: true

class Piece
  def initialize(is_white)
    @killed = false
    @is_white = is_white
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
    @is_white
  end
end