p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p 'array.select { |element| array[array.index(element) - 1] && element < array[array.index(element) - 1] && array[array.index(element) + 1] && element < array[array.index(element) + 1] }.min'
p array.select { |element| array[array.index(element) - 1] && element < array[array.index(element) - 1] && array[array.index(element) + 1] && element < array[array.index(element) + 1] }.min
