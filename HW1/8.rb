p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p 'array.map { |element| element.odd? && element != array[0] && element != array[-1] ? element + array[0] : element }'
p array.map { |element| element.odd? && element != array[0] && element != array[-1] ? element + array[0] : element }
