puts "Yo boi, what year were you born ?"
birth_year = gets.chomp.to_i
i = birth_year
while i <= 2017
    puts "In #{i} you were #{i - birth_year} years old !"
    i += 1
end