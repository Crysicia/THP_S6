require 'faker'

10.times do
  Gossip.create(author: Faker::VForVendetta.character, content: Faker::VForVendetta.quote)
end