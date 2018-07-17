#!/usr/bin/env rvm-auto-ruby

require 'benchmark'

# O(2^n) na fibonacci primjeru

# Generušeno nasumični broj radi testiranja
# Možemo primjetiti kako vrijeme računanja eksponencijalno raste

n = rand(1..50)

def fibonacci(n)
  # ako je n = 1 zelimo ispisati 1
  if n == 1
    return 1
    # ako je n = 2 zelimo ispisati 1
  elsif n == 2
    return 1
    # ako je n > 2 zelimo ispisati zbit dvije prethodne vrijednosti
  else
    fibonacci(n-1).to_i + fibonacci(n-2).to_i
  end
end

Benchmark.bm(10) do |x|
  x.report("Fibonacci_broja_#{n}") { fibonacci(n) }
end
