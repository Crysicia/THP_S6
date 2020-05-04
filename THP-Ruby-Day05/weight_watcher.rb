WELSH = Hash.new
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3

CALORIES = Hash.new
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

FRITES = Hash.new
FRITES["Lipides"] = 15
FRITES["Glucides"] = 41
FRITES["Protéines"] = 3.4

BIERE = Hash.new
BIERE["Lipides"] = 0
BIERE["Glucides"] = 25
BIERE["Protéines"] = 4

PRIX = Hash.new

PRIX["WELSH"] = Hash.new
PRIX["FRITES"] = Hash.new
PRIX["BIERE"] = Hash.new

PRIX["WELSH"][:prix] = 15
PRIX["FRITES"][:prix] = 4
PRIX["BIERE"][:prix] = 5


MENU = Hash.new
MENU["WELSH"] = WELSH
MENU["BIERE"] = BIERE
MENU["FRITES"] = FRITES
MENU[PRIX] = PRIX


def weight_watchers(fat)
    result = 0
    for i in 0..2
        result += fat.values[i] * CALORIES.values[i]
    end
    return result
end

def meal_weight_watchers(menu)
    total_cal = 0
    menu.each do |x, y|
        if x == "WELSH"
            total_cal += weight_watchers(y)
        end
    end
    return total_cal
end

puts meal_weight_watchers(MENU)
p MENU