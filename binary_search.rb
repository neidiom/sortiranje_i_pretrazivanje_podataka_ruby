#!/usr/bin/env rvm-auto-ruby
# Vremenska Slozenost = O(logn)
# Preduslov: Niz bi prethodno trebao biti sortiran

sortirani_niz = [0,1,2,3,4,5,6,7,8]
kljuc = 8

def binary_search (a,key)  # a je niz koji pretrazujemo, key je vrijednost koju trazimo
  # Postavljamo prvu vrijednost
  lo = 0
  # Brojimo ukupan broj clanova niza
  n = a.length
  # postavljamo krajnju vrijednost
  hi = n-1
  puts "Pozicija prvog clana niza je #{lo}"
  puts "Pozicija zadnjeg clana niza je #{hi}"
  puts "Ukupan broj clanova niza je #{n}",""
  puts "niz je #{a}",""
  puts "Provjeravamo da li je prvi clan #{a[lo]} manji ili jednak zadnjem clanu niza #{a[hi]}.",""
  while (lo<=hi)
    puts ""
    puts "Pokrecemo petlju"
    puts "  Prvi clan #{a[lo]} jeste manji ili jednak zadnjem clanu niza #{a[hi]}.",""
    puts "  Trazimo srednju vrijednost niza"
    puts "  Srednju vrijednost dobijemo tako sto oduzmemo #{hi} sa #{lo} i dobijemo #{hi-lo}, zatim #{hi-lo} dijelimo sa 2 i dobijemo #{(hi-lo)/2}, i na kraju #{(hi-lo)/2} sabiremo sa #{lo} i dobijemo #{lo+((hi-lo)/2)}",""
    mid = lo+((hi-lo)/2)
    puts "  Srednja vrijednost niza je #{a[mid]}",""

    if a[mid] == key
      puts "    Srednja vrijednost #{a[mid]} je jednaka trazenom kljucu #{key}."
      puts "    Vrati srednju vrijednost kao trazenu vrijednost"
      return mid
    elsif a[mid] < key
      puts "    Srednja vrijednost #{mid} manja od trazenog kljuca #{key}."
      lo=mid+1
      puts "    Dijelimo niz na pola tako sto postavljamo novu minimalnu vrijednost"
      puts "    Nova minimalnu vrijednost odnosno prvi clan je #{lo}."
    else
      puts "    Srednja vrijednost #{a[mid]} nije jednaka trazenom kljucu #{key}."
      puts "    Minimalna vrijednost #{lo} nije manja od trazenog kljuca #{key}."
      hi=mid-1
      puts "    Najveca vrijednost je #{hi}"
    end
  end

  return "Vrijednost nije pronadjena u nizu"
end

puts binary_search(sortirani_niz,kljuc)

# Referenca https://rubyalgo.github.io/algorithms/searching/binary-search/
