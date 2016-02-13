class MergeSort
  def sort(array1, array2)
    num_comparisons = array1.length + array2.length
    sorted_array = []
    index1 = 0
    index2 = 0
    1.upto(num_comparisons) do
      if array1[index1] == nil
        sorted_array.push(array2[index2])
        index2 += 1
      elsif array2[index2] == nil
        sorted_array.push(array1[index1])
        index1 += 1
      elsif array1[index1] <= array2[index2]
        sorted_array.push(array1[index1])
        index1 += 1 if (index1 < array1.length - 1)
      else
        sorted_array.push(array2[index2])
        index2 += 1 if (index2 < array2.length - 1)
      end
    end
    sorted_array
  end

  # def sort(items, beginning_index = 0, end_index = 3)
  #   beginning_item = items[beginning_index]
  #   end_item = items[end_index]
  #   sorted_array = []
  #   if end_item < beginning_item
  #     sorted_array[0] = end_item
  #     sorted_array[1] = beginning_item
  #   else
  #     sorted_array[0] = beginning_item
  #     sorted_array[1] = end_item
  #   end
  #   sorted_array
  # end




  # def sort(items, beginning_index = 0, end_index = (items.length - 1))
  #   if beginning_index != end_index
  #     sort(items, beginning_index, end_index/2)
  #   elsif end_index/2 != end_index
  #     sort(items, end_index/2, end_index)
  #   end
  #   merge(items, beginning_index, end_index)
  #   items
  # end
  #
  # def merge(items, beginning_index, end_index)
  #   beginning_item = items[beginning_index]
  #   end_item = items[end_index]
  #   if end_item < beginning_item
  #     items[beginning_index] = end_item
  #     items[end_index] = beginning_item
  #   end
  # end
end
