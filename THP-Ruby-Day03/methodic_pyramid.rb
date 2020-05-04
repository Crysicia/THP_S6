def ask_how_many_floors
    puts "hOI boi, I'm making a pyramid, can you give me a number between 1 and 25 ?"
    return gets.chomp.to_i
end

def print_pyramid (floors)
    if floors <= 25 && floors >= 1
        hash = "#"
        floors.times do
            puts hash
            hash << "#"
        end
    else
        puts "I said between 1 and 25...\nSo let me ask again"
        perform
    end
end

def perform
    print_pyramid(ask_how_many_floors)
end

perform