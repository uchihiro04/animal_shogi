# frozen_string_literal: true
require_relative 'piece'

class Lion < Piece

  def initialize(player)
    super(player == "first" ? "L" : "l")
  end
end

