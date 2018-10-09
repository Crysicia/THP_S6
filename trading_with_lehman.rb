# frozen_string_literal: true

def trader_du_dimanche(arr)
  hash = {}
  arr.each_with_index do |a, b|
    for i in b..arr.length - 1
      hash["#{b},#{i}"] = arr[i] - a
    end
  end
  hash.max_by{ |_k, v| v }[0].split(",").map{ :to_i }
end
