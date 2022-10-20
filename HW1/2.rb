array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p 'array.each_with_index { |e, i| p e if i.odd? }.each_with_index { |e, i| p e if i.even? }'
p array.each_with_index { |e, i| p e if i.odd? }.each_with_index { |e, i| p e if i.even? }
