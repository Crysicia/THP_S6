# frozen_string_literal: true

def multiples
  result = 0
  (1...1000).each do |i|
    (i % 3).zero? || (i % 5).zero? ? result += i : nil
  end
  result
end
