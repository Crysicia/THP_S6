arr = []
i = 01
50.times do
    if (i < 10)
        arr << "elon.musk.0#{i}@spaceX.com"
    else
        arr << "elon.musk.#{i}@spaceX.com"
    end
    i += 1
end

arr.each do |input|
    splited = input.split('.')
    num = splited[2].split('@')
    if (num[0].to_i%2 == 0)
        puts input
    end
end