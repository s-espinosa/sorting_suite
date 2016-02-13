require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort.rb'

class InsertionSortTest < Minitest::Test
  def test_it_sorts_numbers_passed_to_it
    sorter = InsertionSort.new

    actual = sorter.sort([5, 7, 2, 14, 29, 12, 3, 35, 4, 10])
    expected = [2, 3, 4, 5, 7, 10, 12, 14, 29, 35]
    assert_equal expected, actual
  end

  def test_it_sorts_data_passed_to_it
    sorter = InsertionSort.new
    assert_equal true, sorter.is_a?(Object)

    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_checks_that_all_items_passed_are_the_same_type
    skip
  end
end
