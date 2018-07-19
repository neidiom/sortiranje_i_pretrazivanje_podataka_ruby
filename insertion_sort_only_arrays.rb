#!/usr/bin/env rvm-auto-ruby

nesortirani_niz = [2,9,6,4]

def insertion_sort(a)
  puts "#{a}"
  n = a.length
  for i in 1...n
    j=i
    while j>0
      if a[j-1]>a[j]
        temp=a[j]
        a[j]=a[j-1]
        puts "#{a}"
        a[j-1]=temp
        puts "#{a}"
      else
        break
      end
      j=j-1
    end
  end
  return a.inspect
end

puts insertion_sort(nesortirani_niz)

# Referenca: https://rubyalgo.github.io/algorithms/sorting/insertion-sort/
