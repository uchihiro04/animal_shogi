# frozen_string_literal: true

require_relative 'piece'

class Chick < Piece
  def initialize(player)
    super(player == 'first' ? 'C' : 'c')
  end
end
