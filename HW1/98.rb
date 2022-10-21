p array = [15, 0, 12, 2, 17, 3, 0, -18]
p arr = []
p 'Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.'
p 'array.each_with_index { |e, i| arr << i if e < i - 1 }'
p '"#{arr} | #{arr.count}"'
p array.each_with_index { |e, i| arr << i if e < i - 1 }
p "#{arr} | #{arr.count}"
