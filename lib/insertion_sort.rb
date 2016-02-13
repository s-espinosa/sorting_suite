require 'pry'

class InsertionSort
  def sort(items)
    1.upto(items.length-1) do |i|
      0.upto(i-1) do |n|
        to_sort = items[i-n]
        to_check = items[i-1-n]
        if to_sort < to_check
          items[i-1-n] = to_sort
          items[i-n] = to_check
        end
      end
    end
    items
  end
end
