p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p 'array.select { |e| array[array.index(e) - 1] && e < array[array.index(e) - 1] && array[array.index(e) + 1] && e < array[array.index(e) + 1] }.min'
p array.select { |e| array[array.index(e) - 1] && e < array[array.index(e) - 1] && array[array.index(e) + 1] && e < array[array.index(e) + 1] }.min
