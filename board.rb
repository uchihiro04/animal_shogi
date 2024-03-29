# frozen_string_literal: true

require_relative 'lion'
require_relative 'giraffe'
require_relative 'elephant'
require_relative 'chick'

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
    place_piece(Lion.new('first').type, 3, 1)
    place_piece(Lion.new('second').type, 0, 1)
    place_piece(Giraffe.new('first').type, 3, 0)
    place_piece(Giraffe.new('second').type, 0, 2)
    place_piece(Elephant.new('first').type, 3, 2)
    place_piece(Elephant.new('second').type, 0, 0)
    place_piece(Chick.new('first').type, 2, 1)
    place_piece(Chick.new('second').type, 1, 1)
  end

  def place_piece(piece, row, column)
    @grid[row][column] = piece
  end
end
