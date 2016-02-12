class BubbleSort
  def sort (array_to_sort)
    final_array_index = array_to_sort.length - 1

    0.upto(final_array_index) do |n|
      1.upto(final_array_index-n) do |i|
        previous = array_to_sort[i-1]
        current = array_to_sort[i]

        array_to_sort[i], array_to_sort[i-1] = previous, current if previous > current
      end
    end
    array_to_sort
  end
end
