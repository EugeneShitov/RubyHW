p array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p '(0...array.index(array.min)).count'
# Так даже проще: array.index(array.min)
p (0...array.index(array.min)).count
