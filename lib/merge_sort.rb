class MergeSort
  def sort(array, first_index = 0, last_index = array.length-1)
    return [] if array == []
    midpoint = (first_index + last_index) / 2
    left = array[first_index..midpoint]
    right = array[midpoint + 1..last_index]

    left = sort(left) if left.length != 1
    right = sort(right) if right.length != 1
    merge(left, right)
  end

  def merge(left, right)
    numbers_to_push = left.length + right.length
    left_index = 0
    right_index = 0
    sorted = []

    1.upto(numbers_to_push) do
      if left[left_index] == nil
        sorted << right[right_index]
        right_index += 1
      elsif right[right_index] == nil
        sorted << left[left_index]
        left_index += 1
      elsif left[left_index] < right[right_index]
        sorted << left[left_index]
        left_index += 1
      else
        sorted << right[right_index]
        right_index += 1
      end
    end
    sorted
  end
end
