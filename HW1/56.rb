array = [15, 0, 12, 2, 17, 3, 0, -18]
p 'Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p '(array.rindex(array.min)...array.index(array[-1])).count'
p (array.rindex(array.min)...array.index(array[-1])).count
