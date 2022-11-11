p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p 'array.map { |element| element.negative? ? array.max : element }'
p array.map { |element| element.negative? ? array.max : element }
