def jean_michel_data(str, dictionary)
  hash = Hash.new
  dictionary.each do |n|
    str.scan(/#{n}/i).count > 0 ? hash[n] = str.scan(/#{n}/i).count : nil
  end
  hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
input = "Howdy partner, sit down! How's it going?"

p jean_michel_data(input, dictionary)