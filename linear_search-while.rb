#!/usr/bin/env rvm-auto-ruby
# Ruby linear search algorithm with while loop

niz = [6,9,5,3,4,7,8,0]

def linear_search(niz, vrijednost)
  i = 0
  n = niz.length
  while i < n
    if niz[i] == vrijednost
      return "Vrijednost #{vrijednost} pronadjena, pozicija unutar niza je #{i}."
    end
    i+=1
  end
end

puts linear_search(niz,0)
