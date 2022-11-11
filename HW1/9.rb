p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p 'array.map { |element| element.positive? ? array.min : element }'
p array.map { |element| element.positive? ? array.min : element }
