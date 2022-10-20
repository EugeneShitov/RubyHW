p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p 'array.select { |e| e > array[array.index(e) - 1] && e > array[array.index(e) + 1] }.max'
p array.select { |e| e > array[array.index(e) - 1] && e > array[array.index(e) + 1] }.max
