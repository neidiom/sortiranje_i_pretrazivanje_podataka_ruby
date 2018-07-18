#!/usr/bin/env rvm-auto-ruby

nesortirani_niz = [2,9,6,4]

# definišemo novu metodu sa imenom selection_sort i jednim parametrom
# očekujemo da će kao parametar biti prolsijeđen niz
def selection_sort(a)
  # brojimo broj čanova niza pomoću length Ruby metode, te rezulat smijestamo u varijablu n
  n=a.length
  puts "#{a}"
  for i in 0...n
    min=i
    for j in (i+1)...n
      if a[j]<a[min]
        temp=a[j]
        a[j]=a[min]
        puts "#{a}"
        a[min]=temp
        puts "#{a}"
      end
    end
  end
  return a
end

puts selection_sort(nesortirani_niz).to_s

# Referenca: https://rubyalgo.github.io/algorithms/sorting/selection-sort/
