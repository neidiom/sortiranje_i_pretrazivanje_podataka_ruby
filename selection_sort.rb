#!/usr/bin/env rvm-auto-ruby

nesortirani_niz = [2,9,6,4]

# definišemo novu metodu sa imenom selection_sort i jednim parametrom
# očekujemo da će kao parametar biti prolsijeđen niz
def selection_sort(a)
  # brojimo broj čanova niza pomoću length Ruby metode, te rezulat smijestamo u varijablu n
  n=a.length
  puts "Nesortirani niz je #{a}",""
  puts "Ukupan broj clanova niza je #{n}",""
  for i in 0...n
    puts "  #{i}. Nalazimo se u iteraciji broj #{i}"
    puts "  Postavljamo #{i} kao minimalnu vrijednost odnosno prvi clan niza"
    min=i
    for j in (i+1)...n
      puts "    Prethodna minimalna vrijednost niza je #{j-1}, na toj poziciji je broj #{a[j-1]}"
      puts "    Pokrecemo petlju unutar petlje te inkrementiramo minimalnu vrijednost niza"
      puts "    Trenutna minimalna vrijednost niza je #{j}, na toj poziciji je broj #{a[j]}"
      puts "    Redosljed niza je #{a}"
      puts "      Poredimo #{a[j]} sa #{a[min]}"
      puts "      Provjeravamo da li je minimalna vrijednost niza #{a[j]} manja od #{a[min]}"
      if a[j]<a[min]
        puts "        Vrijednost #{a[j]} je manja od #{a[min]}"
        puts "        Smjesti #{a[j]} u temp varijablu"
        temp=a[j]
        puts "        Zamijeni #{a[j]} sa #{a[min]}"
        a[j]=a[min]
        puts "        Novi redosljed niza sada je #{a}"
        puts "        Smjesti #{temp} iz temp varijable na poziciju umjesto #{a[min]} odnosno clana niza na pozici #{min}"
        a[min]=temp
        puts "        Novi redosljed niza sada je #{a}"
      else
        puts "      #{a[j]} vrijednost nije manja od #{a[min]}, preskacemo"
      end
    end
  end
  return a
end

puts "", "Sortirani niz je " + selection_sort(nesortirani_niz).to_s

# Referenca: https://rubyalgo.github.io/algorithms/sorting/selection-sort/
