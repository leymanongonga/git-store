num=[10,20,30,40]
print(num)
num.insert(1,15)
print(num)
num=[10,15,20,30,40]
new_numbers=[50,60,70]
num.extend(new_numbers)
num=[10,20,30,40,50,60,70]
num.remove(70)
print(num)
num=[10,20,30,40,50,60]
num.sort()
num=[10,20,30,40,50,60]
index_30=num.index(30)
print(index_30)