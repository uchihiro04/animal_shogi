# frozen_string_literal: true

class Game
  attr_reader :first_player, :second_player

  def initialize(first_player, second_player)
    @first_player = first_player
    @second_player = second_player
  end

  def play; end
end
