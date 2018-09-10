puts "hOI boi, I'm making a pyramid, can you give me a number between 1 and 25 ?"
floors = gets.chomp.to_i
if (floors <= 25 && floors >= 1)
    hash = "#"
    floors.times do
        puts hash
        hash << "#"
    end
else
    puts "I said between 1 and 25..."
end