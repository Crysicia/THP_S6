puts "Yo boi, how old are you ?"
age = gets.chomp.to_i
i = 0
k = age
while (i <= age)
    puts "#{k} years ago you were #{i} years old !"
    i += 1
    k -= 1
end