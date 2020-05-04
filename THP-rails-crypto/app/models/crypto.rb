class Crypto < ApplicationRecord
  def self.search(search)
    if search
      crypto = self.find_by(name: search)
    end
  end
end
