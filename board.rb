# frozen_string_literal: true

# rubocop:disable Style/Documentation
class Board
  def initialize(vertical_line, row)
    @vertical_line = vertical_line
    @row = row
  end

  def display
    column_name = %w[A B C]
    board_elements = Array.new(@vertical_line) { Array.new(@row) { '|' } }
    puts '後手:'

    board_elements.each.with_index(1) do |row_element, index|
      row_element.each.with_index(1) do |element, i|
        case i
        when 1
          index == 1 ? print("  #{element} ") : print("#{index - 1} #{element} ")
        when 4
          index == 1 ? puts("#{column_name[i - 2]} #{element} ") : puts("  #{element} ")
        else
          print "#{index == 1 ? "#{column_name[i - 2]} " : '  '}#{element} "
        end
      end
    end

    puts '先手:'
  end
end
# rubocop:enable Style/Documentation
