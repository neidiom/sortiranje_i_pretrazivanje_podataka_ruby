#!/usr/bin/env rvm-auto-ruby
# Ruby linear search algorithm with each loop

niz = [6,9,5,3,4,7,8,0]

def linear_search(niz, vrijednost)
  niz.each do |i|
    if i == vrijednost
      return "Vrijednost #{vrijednost} pronadjena."
    end
  end
end

puts linear_search(niz,0)
