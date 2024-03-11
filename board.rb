# frozen_string_literal: true
require_relative 'lion'

class Board
  ROW = 4
  COLUMN = 3

  def initialize
    @grid = Array.new(ROW) { Array.new(COLUMN) }
    put_in_initial_position
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

  def put_in_initial_position
    place_piece(Lion.new("first").type, 3, 1)
    place_piece(Lion.new("second").type, 0, 1)
  end

  def place_piece(piece, row, column)
    @grid[row][column] = piece
  end
end
