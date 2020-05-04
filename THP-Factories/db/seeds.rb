require 'faker'
12.times do
  Assembly.create(name: Faker::Lovecraft.location)
end

rand(2000).times do
  x = Part.new(part_number: (rand(30000000)+10000000).to_s)
  x.assemblies = Assembly.find(rand(14)+1), Assembly.find(rand(14)+1), Assembly.find(rand(14)+1)
  x.save
end