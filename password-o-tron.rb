def define_password
    puts "Set your uber-secret password down below"
    print "> "
    @user_password = gets.chomp
end

def password_verification
    puts "Type your password again"
    print "> "
    if gets.chomp === @user_password
        puts "Your passwords are matching."
    else
        puts "The entries are not the same, please try again."
        perform
    end
end

def connect(password)
    if password === @user_password
        puts "You are now connected to our uber-secret facility !"
    else
        puts "Wrong password, expect to be raided by the FBI in the next 5 to 10 minutes."
    end
end

def connection
    puts "Please enter your password"
    print "> "
    connect(gets.chomp)
end

def perform 
    define_password
    password_verification
    connection
end

perform