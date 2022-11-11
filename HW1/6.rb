p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p 'array.map { |element| element.even? && element != array[0] && element != array[-1] ? element + array[-1] : element }'
p array.map { |element| element.even? && element != array[0] && element != array[-1] ? element + array[-1] : element }
