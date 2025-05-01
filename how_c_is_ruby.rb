def double_pup(fox)
    if fox.count > 1
        return fox.pop - fox.pop
    end
end

dog = [10, 1, 444, 66, -10000]

puts double_pup(dog)