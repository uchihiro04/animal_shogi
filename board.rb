# frozen_string_literal: true

class Board
  def initialize
    @grid = Array.new(4) { Array.new(3) }
  end

  def display
    puts '  | A | B | C |'
    @grid.each.with_index(1) do |row, index|
      board_str = "#{index} |"
      row_str = row.map { |piece| piece.nil? ? '   ' : " #{piece} " }.join('|')
      print board_str + row_str
      puts '|'
    end
  end
end
