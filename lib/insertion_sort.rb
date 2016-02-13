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



  # create an index i
  # i = 0

  # for the array at each index i, move the item at index i to the left until it is not smaller than the item to the left of it.



# if @items[i] < @items[i-1]
#   to_insert = @items[i]
#   @items[i] = @items[i-1]
#   item_to_check = @items[i-2]
#
#
# to_insert = @items[i]
# @items[i] =
#
#
# if bigger < smaller
#   @items[] = smaller
#   @
#
#

# @items.each do |item|
#   item_index = items.index_of(item)
#   until i == @items.length - 1
#
#
#   i += 1

# 1.upto(@items.length - 1)
#   bigger = @items[]
#
#
# end


# end









#create two arrays
# first array is sorted
# second array is not sorted
# is it better to do two arrays or do this within a single array?
