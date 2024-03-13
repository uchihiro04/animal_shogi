# frozen_string_literal: true
require_relative 'piece'

class Giraffe < Piece
  def initialize(player)
    super(player == "first" ? "G" : "g")
  end
end
