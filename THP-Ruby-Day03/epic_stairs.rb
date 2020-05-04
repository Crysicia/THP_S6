@stairs = 0

def dice_roll
    return rand(6) + 1
end

def check_stairs(move)
    if move === "Climb"
        if @stairs <= 8
            @stairs = @stairs + 1
            return true
        else
            @stairs = @stairs + 1
            return false
        end
    elsif move === "Fall"
        if @stairs >= 1
            @stairs = @stairs - 1
            return true
        else
            @stairs = @stairs - 1
            return false
        end
    end
end

def check_dice(dice)
    if dice >= 5
        if check_stairs("Climb")
            puts "You rolled a #{dice} so you climb a stair ! You are now on stair #{@stairs}."
        else
            puts "You rolled a #{dice} so you climb a stair ! You are now on stair #{@stairs}."
            puts "You won !"
        end
    elsif dice === 1
        if check_stairs("Fall")
            puts "You rolled a #{dice} so you get back one stair ! You are now on stair #{@stairs}."
        else
            puts "You rolled a #{dice}, you are already on stair #{@stairs}."
        end
    else
        puts "You rolled a #{dice}, nothing happen."
    end
end 

def perform
    while @stairs < 10
        check_dice(dice_roll)
    end
end

perform