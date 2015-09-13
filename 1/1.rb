gets
2.times do
    p (1...gets.to_i).select {|num| num%3==0 || num%5==0}.reduce(0, :+)
end