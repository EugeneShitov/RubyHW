p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p 'array.map { |e| e.positive? ? array.min : e }'
p array.map { |e| e.positive? ? array.min : e }
