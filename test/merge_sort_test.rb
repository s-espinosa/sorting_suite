require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort.rb'

class MergeSortTest < Minitest::Test
  def test_it_merges_two_sorted_arrays_into_a_single_sorted_array
    sorter = MergeSort.new

    array1 = [1, 4, 7, 10]
    array2 = [2, 3, 8, 9]

    actual = sorter.merge(array1, array2)
    expected = [1, 2, 3, 4, 7, 8, 9, 10]

    assert_equal expected, actual
  end

  def test_it_sorts_two_numbers_passed_to_it
    sorter = MergeSort.new

    actual = sorter.sort([2,1])
    expected = [1, 2]
    assert_equal expected, actual
  end

  def test_it_sorts_numbers_passed_to_it
    sorter = MergeSort.new

    actual = sorter.sort([5, 7, 2, 14, 29, 12, 3, 35, 4])
    expected = [2, 3, 4, 5, 7, 12, 14, 29, 35]
    assert_equal expected, actual
  end

  def test_it_sorts_data_passed_to_it
    sorter = MergeSort.new
    assert_equal true, sorter.is_a?(Object)

    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end

  def test_it_sorts_1000_numbers
    sorter = MergeSort.new
    random_array = (1..1000).to_a.shuffle

    actual = sorter.sort(random_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_sorts_reversed_arrays
    sorter = MergeSort.new
    reversed_array = (1..1000).to_a.reverse

    actual = sorter.sort(reversed_array)
    expected = (1..1000).to_a
    assert_equal expected, actual
  end

  def test_it_returns_empty_arrays_when_passed_empty_arrays
    sorter = MergeSort.new
    empty_array = []

    actual = sorter.sort(empty_array)
    expected = []
    assert_equal expected, actual
  end
end
