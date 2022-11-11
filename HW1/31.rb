p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
p '(0...array.size).sort_by { |index| array[index] }.reverse'
p (0...array.size).sort_by { |index| array[index] }.reverse
