require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test
  def test_it_sorts_data_passed_to_it
    sorter = BubbleSort.new

    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_sorts_numbers_passed_to_it
    sorter = BubbleSort.new

    actual = sorter.sort([5, 7, 14, 29, 2])
    expected = [2, 5, 7, 14, 29]
    assert_equal expected, actual
  end

  def test_it_sorts_1000_numbers
    sorter = BubbleSort.new
    random_array = (1..1000).to_a.shuffle

    actual = sorter.sort(random_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_sorts_reversed_arrays
    sorter = BubbleSort.new
    reversed_array = (1..1000).to_a.reverse

    actual = sorter.sort(reversed_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_returns_empty_arrays_when_passed_empty_arrays
    sorter = BubbleSort.new
    empty_array = []

    actual = sorter.sort(empty_array)
    expected = []
    assert_equal expected, actual
  end
end
