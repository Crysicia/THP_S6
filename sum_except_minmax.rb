def sum_except_minmax(arr)
   return arr.reject{|n| n == arr.max}.reject{|n| n == arr.min}.reduce(:+)
end