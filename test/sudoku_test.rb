require 'minitest/pride'
require 'minitest/autorun'
require './lib/sudoku'

class SudokuTest < MiniTest::Test

  def test_that_it_can_return_empty_spots
    sudoku = Sudoku.new("./puzzles/easier_sample.txt")
    assert_equal " ", sudoku.grid[:A1]
    assert_equal " ", sudoku.grid[:A2]
    assert_equal " ", sudoku.grid[:B1]
    assert_equal " ", sudoku.grid[:B2]
  end

  def test_that_it_can_parse_a_file
    sudoku = Sudoku.new("./puzzles/easier_sample.txt")
    sudoku.parse
    assert_equal " ", sudoku.grid[:A1]
    assert_equal "2", sudoku.grid[:A2]
    assert_equal "2", sudoku.grid[:B1]
    assert_equal "1", sudoku.grid[:B2]
  end
end