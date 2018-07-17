#!/usr/bin/env rvm-auto-ruby

require 'benchmark'

mali_sortirani_niz = (0..10).to_a
veliki_sortirani_niz = (1..5_000_000).to_a

# O( log N )
def binary_search(array, element, low=0, high=array.length-1)
  return nil if high < low

  mid = ( low + high ) / 2

  if array[mid] > element
    return binary_search(array, element, low, mid - 1)
  elsif array[mid] < element
    return binary_search(array, element, mid + 1, high)
  else
    return mid
  end
end

Benchmark.bm(50) do |x|
  x.report("binary_search(mali_sortirani_niz)") { binary_search(mali_sortirani_niz, 4) }
  x.report("binary_search(veliki_sortirani_niz)") { binary_search(veliki_sortirani_niz, 4_999_999) }
end
