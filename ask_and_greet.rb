def ask_first_name
    puts "Hey you, what's your name ?"
    first_name = gets.chomp
end

def say_hello (name)
    puts "Hello #{name}"
end

def perform
    say_hello(ask_first_name)
end

perform