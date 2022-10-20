p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'array.partition.with_index { |e, i| i.even? }.flatten'
p array.partition.with_index { |e, i| i.even? }.flatten
