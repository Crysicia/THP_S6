# frozen_string_literal: true

def chiffre_de_cesar(str, shift)
  result = ""
  str.chars.map{ |n| n.ord >= 65 && n.ord <= 90 ? result << ((n.ord - 65 + shift) % 26 + 65).chr : n.ord >= 97 && n.ord <= 122 ? result << ((n.ord - 97 + shift) % 26 + 97).chr : n.ord == 32 ? result << " " : nil }
  
  result
end

p chiffre_de_cesar("What a string!", 5)
