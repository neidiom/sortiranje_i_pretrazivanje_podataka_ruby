#!/usr/bin/env rvm-auto-ruby

require 'benchmark'

# Ovdje koristimo linearnu ili sekvencijalnu pretragu kao primjer.
# Pretraga velikog niza sa 10 miliona mnogo će duže trajati od
# pretrage malog niza od 1000 članova.

def linear_search(array, value)
  array.each { |i| return i if i == value }
end

mali_niz = (0..1000).to_a
veliki_niz = (1..10_000_000).to_a

Benchmark.bm(50) do |x|
  x.report("linear_search(mali_niz)") { linear_search(mali_niz,1000) }
  x.report("linear_search(veliki_niz)") { linear_search(veliki_niz,1000000) }
end
