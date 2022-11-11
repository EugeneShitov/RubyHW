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
p arr.map.delete_if(&:odd?)
p arr.select(&:even?)
p arr.reject(&:odd?)

p '– оставить только те числа, которые без остатка делятся на 3'
p arr
p arr.select { |element| (element % 3).zero? }

p '– удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)'
p arr
p arr.uniq

p '– разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого'
p arr
p arr.map { |element| element.to_f / 10 }

p '– получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
p arr
arr1 = arr.select { |element| element <= 26 && element >= 1 }
arr2 = ('A'..'Z').to_a
p arr1.map { |index| arr2[index - 1] }

p '– поменять местами минимальный и максимальный элементы массивa'
p arr
arr_temp = arr.clone
min_el = arr.index(arr.min)
max_el = arr.index(arr.max)
arr_temp[min_el], arr_temp[max_el] = arr_temp[max_el], arr_temp[min_el]
p arr_temp

p '– найти элементы, которые находятся перед минимальным числом в массиве'
p arr
p arr[0...arr.index(arr.min)]

p '– необходимо найти три наименьших элемента'
p arr
p arr.min(3)
