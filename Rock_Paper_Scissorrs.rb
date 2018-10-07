@rps_hash = {
    "Scissors" => "Paper",
    "Paper" => "Rock",
    "Rock" => "Scissors"
    }

def rps(playerOne, playerTwo)
    if @rps_hash[playerOne] == playerTwo
        puts "Player one win !"
    elsif playerOne == playerTwo
        puts "Draw !"
    else
        puts "Player two win !"
    end
end