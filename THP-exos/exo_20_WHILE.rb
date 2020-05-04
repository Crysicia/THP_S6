puts "hOI boi, I'm making a pyramid, can you give me a number between 1 and 25 ?"
floors = gets.chomp.to_i
i = 1
if floors <= 25 && floors >= 1
    hash = "#"
    while i <= floors
        puts hash
        hash << "#"
        i += 1
    end
else
    puts "I said between 1 and 25..."
end