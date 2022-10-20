array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p 'array.each_index.select { |i| array[i] < array[i - 1] && array[i] < array[i + 1] }.min'
p array.each_index.select { |i| array[i] < array[i - 1] && array[i] < array[i + 1] }.min
