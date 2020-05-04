def sum_pos_neg(arr)
    return [arr.select{|x| x>0}.reduce(:+), arr.select{|x| x<0}.reduce(:+)]
end