puts "It's the final countdown, tadada toom tadada tata. Enter a number that we'll use to make the countdown :"
countdown = gets.chomp.to_i
while countdown >= 0
    puts countdown
    countdown -= 1
end