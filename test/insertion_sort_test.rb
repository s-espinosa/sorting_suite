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

  def test_it_sorts_1000_numbers
    sorter = InsertionSort.new
    random_array = (1..1000).to_a.shuffle

    actual = sorter.sort(random_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_sorts_reversed_arrays
    sorter = InsertionSort.new
    reversed_array = (1..1000).to_a.reverse

    actual = sorter.sort(reversed_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_returns_empty_arrays_when_passed_empty_arrays
    sorter = InsertionSort.new
    empty_array = []

    actual = sorter.sort(empty_array)
    expected = []
    assert_equal expected, actual
  end
end
