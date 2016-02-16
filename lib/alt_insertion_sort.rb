require 'pry'

class InsertionSort
  def sort(items)
    return [] if items == []
    sorted = [items.shift]
    until items[0] == nil
      item_to_add = items.shift
      inserted = false
      index = sorted.length - 1
      until inserted == true
        if item_to_add > sorted[index]
          sorted.insert(index+1, item_to_add)
          inserted = true
        elsif index == 0
          sorted.unshift(item_to_add)
          inserted = true
        else
          index = index - 1
        end
      end
    end
    sorted
  end
end
