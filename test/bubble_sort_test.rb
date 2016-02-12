require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test
  def test_it_sorts_data_passed_to_it
    sorter = BubbleSort.new
    assert_equal true, sorter.is_a?(Object)

    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_sorts_numbers_passed_to_it
    skip
  end

  def test_it_checks_that_all_items_passed_are_the_same_type
    skip
  end
end
