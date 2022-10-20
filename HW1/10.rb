array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p 'array.map { |e| e.positive? ? array.max : e }'
p array.map { |e| e.positive? ? array.max : e }
