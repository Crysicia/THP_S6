arr = []
i = 01
50.times do
    if i < 10
        arr << "elon.musk.0#{i}@spaceX.com"
    else
        arr << "elon.musk.#{i}@spaceX.com"
    end
    i += 1
end