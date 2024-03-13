# frozen_string_literal: true

require_relative 'piece'

class Elephant < Piece
  def initialize(player)
    super(player == 'first' ? 'E' : 'e')
  end
end
