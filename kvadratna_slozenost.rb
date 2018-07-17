#!/usr/bin/env rvm-auto-ruby

require 'benchmark'

mali_niz_naizmjenicno_izmijesan = (1..10).to_a.shuffle
veliki_niz_naizmjenicno_izmijesan = (1..10_000).to_a.shuffle

# O(N^2)
def bubble_sort(array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end

  array
end

Benchmark.bm(50) do |x|
  x.report("bubble_sort(mali_niz_naizmjenicno_izmijesan)") { bubble_sort(mali_niz_naizmjenicno_izmijesan) }
  x.report("bubble_sort(veliki_niz_naizmjenicno_izmijesan)") { bubble_sort(veliki_niz_naizmjenicno_izmijesan) }
end
