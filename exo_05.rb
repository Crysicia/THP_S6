# Prints a string
puts "On va compter le nombre d'heures de travail à THP"

# Uses string interpolation to calculte the number of hours we'll be working in THP
puts "Travail : #{10 * 5 * 11}"

# Does the same calculations but in minutes
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"

# Does the same caculations but in seconds
puts 10 * 5 * 11 * 60 * 60

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7 ?"

# Returns a boolean after doing a comparison 
puts 3 + 2 < 5 - 7

# Does some pointless operations
puts "Ça fait combien 3 + 2 ? #{3 + 2}"
puts "Ça fait combien 5 - 7 ? #{5 - 7}"

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons-en plus :"

# Again, does some comparisons that return booleans
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 ? #{5 <= -2}"