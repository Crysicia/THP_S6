def define_password
    puts "Set your uber-secret password down below"
    print "> "
    @user_password = gets.chomp
end

def password_verification
    puts "Type your password again"
    print "> "
    if gets.chomp == @user_password
        puts "Your passwords are matching."
    else
        puts "The entries are not the same, please try again."
        perform
    end
end

def perform 
    define_password 
    password_verification
end

perform