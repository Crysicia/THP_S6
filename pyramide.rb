puts "hOI boi, I'm making an INVERSED pyramid, can you give me a number between 1 and 25 ?"
floors = gets.chomp.to_i
empty = floors - 1
i = 1
if (floors <= 25 && floors >= 1)
    floors.times do
        empty.times do
            print " "
        end
        i.times do
            print "#"
        end
        print "\n"
        empty -= 1
        i += 1
    end
else
    puts "I said between 1 and 25..."
end