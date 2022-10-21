p arr = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522,
         652, 494, 14, 126, 532, 387, 441, 471, 337, 446,
         18, 36, 202, 574, 556, 458, 16, 139, 222, 220,
         107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

p '– узнать количество элементов в массиве'
p arr
p arr.count

p '– перевернуть массив'
p arr
p arr.reverse

p '– найти наибольшее число'
p arr
p arr.max

p '– найти наименьшее число'
p arr
p arr.min

p '– отсортировать от меньшего к большему'
p arr
p arr.sort

p '– отсортировать от большего к меньшему'
p arr
p arr.sort.reverse

p '– удалить все нечетные числа'
p arr
p arr.select(&:even?)

p '– оставить только те числа, которые без остатка делятся на 3'
p arr
p arr.select { |el| (el % 3).zero? }

p '– удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)'
p arr
p arr.uniq

p '– разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого'
p arr
p arr.map { |el| el.to_f / 10 }

p '– получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
p arr
arr1 = arr.select { |el| el <= 26 && el >= 1 }
arr2 = ('A'..'Z').to_a
p arr1.map { |i| arr2[i - 1] }

p '– поменять местами минимальный и максимальный элементы массивa'
p arr
arr_temp = arr.clone
min_el     = arr_temp.each_with_index.min[1]
max_el     = arr_temp.each_with_index.max[1]
arr_temp[min_el], arr_temp[max_el] = arr_temp[max_el], arr_temp[min_el]
p arr_temp

p '– найти элементы, которые находятся перед минимальным числом в массиве'
p arr
p arr[0...arr.index(arr.min)]

p '– необходимо найти три наименьших элемента'
p arr
p arr.min(3)
