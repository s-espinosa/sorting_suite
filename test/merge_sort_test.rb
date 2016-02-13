require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort.rb'

class MergeSortTest < Minitest::Test
  def test_it_sorts_numbers_passed_to_it
    sorter = MergeSort.new

    actual = sorter.sort([5, 7, 2, 14, 29, 12, 3, 35, 4, 10])
    expected = [2, 3, 4, 5, 7, 10, 12, 14, 29, 35]
    assert_equal expected, actual
  end

  def test_it_sorts_data_passed_to_it
    sorter = MergeSort.new
    assert_equal true, sorter.is_a?(Object)

    actual = sorter.sort(["d", "b", "a", "c"])
    expected = ["a", "b", "c", "d"]
    assert_equal expected, actual
  end
end

#test for letter vs number
#check that everything that's being sorted is the same class
