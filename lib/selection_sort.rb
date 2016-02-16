class SelectionSort
  def sort(items)
    last_index = items.length - 1

    0.upto(last_index) do |i|
      current_minimum, index_of_minimum = items[i], i

      i.upto(last_index) do |n|
        potential_minimum = items[n]
        if potential_minimum < current_minimum
          current_minimum = items[n]
          index_of_minimum = n
        end
      end

      items.delete_at(index_of_minimum)
      items.insert(i, current_minimum)
    end
    items
  end
end
