# Площадь треугольника. Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h.
# Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.

print('Enter the base of the triangle: ')
base = Float(gets.chomp)

print('Enter the height of the triangle: ')
height = Float(gets.chomp)

triangle_square = (0.5 * base * height).round(2)

puts("The square of the triangle is #{triangle_square}")