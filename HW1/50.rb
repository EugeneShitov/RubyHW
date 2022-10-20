p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p '(0...array.index(array.max)).count'
# Так даже проще: array.index(array.max)
p (0...array.index(array.max)).count
