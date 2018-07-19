#!/usr/bin/env rvm-auto-ruby

nesortirani_niz = [2,9,6,4]

def insertion_sort(a)
  puts "Nesortirani niz je #{a}"
  n = a.length
  puts "Racunamo broj clanova niza i on iznosi #{n}"
  puts "Potrebno je pokrenuti for petlju #{n} puta"
  for i in 1...n
    puts "  #{i}. Pokrecemo for petlju, iteracija broj #{i}"
    j=i
    #puts "  Smijestamo vrijednost #{i} u varijablu j"
    puts "  Da li je #{j} vrijednost veca od 0 ?"
    while j>0
      puts "    Vrijednost #{j} jeste veca od 0"
      puts "    Da li je #{a[j-1]} vrijednost veca od #{a[j]}"
      if a[j-1]>a[j]
        puts "        Vrijednost #{a[j-1]} jeste veca od #{a[j]}"
        temp=a[j]
        puts "        Smijestamo #{a[j]} u temp varijablu"
        puts "        Redosljed clanova niza trenutno je #{a}"
        a[j]=a[j-1]
        puts "        Smijestamo #{a[j-1]} na poziciju #{j}"
        puts "        Redosljed clanova niza sada je #{a}"
        a[j-1]=temp
        puts "        Smijestamo vrijednost #{temp} iz temp varijable u niz na poziciju #{j-1} "
        puts "        Redosljed clanova niza sada je #{a}"
      else
        puts "        Vrijednosti #{a[j-1]} je manja od #{a[j]}"
        puts "        Preskacemo vrijednost #{a[j-1]}"
        break
      end
      puts "        Postavljamo vrijednost #{a[j-1]} na poziciju #{j} u nizu"
      j=j-1
    end
  end
  puts "Sortirani niz je #{a}"
  #return a.inspect
end

puts insertion_sort(nesortirani_niz)

# Referenca: https://rubyalgo.github.io/algorithms/sorting/insertion-sort/
