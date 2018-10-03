def odd_pyramid
    puts "hOI boi, now I'm more specific and I would like to make the great Gizeh pyramid, could you please give me the number of floors I have to build ?"
    print "> "
    floors = gets.chomp.to_i
    spaces = floors - 1
    floors.times do |i|
        puts "#{' ' * spaces}#{'#' << '#' * i * 2}"
        spaces = spaces - 1
    end
end

odd_pyramid