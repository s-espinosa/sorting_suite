#Sorting Suite

Sorting Suite is a Module 1 assignment completed for the [Turing School of Software Design](https://www.turing.io/). Included in this repo:

* Classes for four separate sorting algorithms and an alternative implementation of one of those algorithms.
* Namespaced Benchmarking class that allow users to determine which of the sorting algorithms worked the fastest on a given hash.
* Testing files for each of the sorting algorithms.

Each of the different sort algorithms is included as a separate class. The alt_insertion_sort file includes an insertion sort algorithm that sorts the items using a second array.

Each of the sort algorithms is run by requiring the class in a given file and passing an array to the 'new' method. For example:

```
require 'bubble_sort'
sorted = BubbleSort.new([8, 20, 4, 7, 3, 100, 22, 1, 5])  # => [1, 3, 4, 5, 7, 8, 20, 22, 100]
```

[Original Assignment](https://github.com/turingschool/curriculum/blob/master/source/projects/sorting_suite.markdown)
