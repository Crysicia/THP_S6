def sum_pos_int(n)
    return n.select{|x| x>0}.reduce(0, :+)
end