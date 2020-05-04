puts "Hey, tu veux que je compte jusqu'à combien ?"
limit = gets.chomp.to_i
i = 1
limit.times do
    puts i
    i += 1
end