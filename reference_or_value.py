def by_reference(cat):
    cat = cat.reverse()
    print(cat)

dog = [1, 2, 3, 4, 5]

print(dog)

by_reference(dog)

print(dog)