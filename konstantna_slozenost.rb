#!/usr/bin/env rvm-auto-ruby

require 'benchmark'

# Primjer gdje pristupamo prvom članu postojećeg niza .
# Možemo primjetiti da ma koliko je veliki niz vrijeme koje je potrebno
# da se pristupi prvom članu postojećeg niza je uvijek isti.

mali_niz = [1, 2, 3, 4, 5]
veliki_niz = (1..9_000_000).to_a

Benchmark.bm(10) do |x|
  x.report("mali_niz_pristup_prvom_clanu") { mali_niz[0] }
  x.report("veliki_niz_pristup_prvom_clanu") { veliki_niz[0] }
end
