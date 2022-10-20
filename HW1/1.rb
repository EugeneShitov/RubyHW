array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p 'array.each_with_index { |e, i| p e if i.even? }.each_with_index { |e, i| p e if i.odd? }'
p array.each_with_index { |e, i| p e if i.even? }.each_with_index { |e, i| p e if i.odd? }
