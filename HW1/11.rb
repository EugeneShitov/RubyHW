array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p 'array.map { |e| e.negative? ? array.min : e }'
p array.map { |e| e.negative? ? array.min : e }
