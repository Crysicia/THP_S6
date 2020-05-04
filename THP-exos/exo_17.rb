puts "Yo boi, quel âge as tu ?"
age = gets.chomp.to_i
i = 0
k = age
while i <= age
    if i == k
        puts "Il y a #{k} ans, tu avais la moitié de l'age que tu as aujourd'hui"
    else
        puts "il y a #{k} ans tu avais #{i} ans !"
    end
    i += 1
    k -= 1
end