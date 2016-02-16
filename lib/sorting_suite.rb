require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

class SortingSuite
  class Benchmark
    def initialize
      base_array =* (1..1000)
      @unsorted_array = base_array.shuffle
    end

    def time(sort_type, array = @unsorted_array)
      @unsorted_array = array
      time = time_to_complete(sort_type, array)
      "#{sort_type} took #{time} seconds"
    end

    def fastest(array = @unsorted_array)
      times_by_type = check_all_sorts(array)
      fastest_time  = times_by_type.keys.min
      fastest_type  = times_by_type[fastest_time]

      "#{fastest_type} is the fastest"
    end
    #
    def slowest(array = @unsorted_array)
      times_by_type = check_all_sorts(array)
      slowest_time  = times_by_type.keys.max
      slowest_type  = times_by_type[slowest_time]

      "#{slowest_type} is the slowest"
    end

    private
    def time_to_complete(sort_type, array)
      sort = sort_type.new

      time_start = Time.new
      sorted = sort.sort(array)
      time_end = Time.new

      time_to_complete = time_end - time_start
    end

    def check_all_sorts(array)
      sort_types = [BubbleSort, InsertionSort, MergeSort]
      types_by_time = {}
      sort_types.each do |type|
        sort_time = time_to_complete(type, array)
        types_by_time[sort_time] = type
      end
      types_by_time
    end
  end
end
