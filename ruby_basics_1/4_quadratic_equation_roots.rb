puts 'This program can calculate roots of quadratic equation.'

print 'What is the first coefficient? '
first_coefficient = Float(gets.chomp)

print 'What is the second coefficient? '
second_coefficient = Float(gets.chomp)

print 'What is the third coefficient? '
third_coefficient = Float(gets.chomp)

discriminant = second_coefficient ** 2 - 4 * first_coefficient * third_coefficient

if discriminant < 0
  puts 'There are no roots in this case'
else discriminant >= 0
  first_root =  (-second_coefficient + Math.sqrt(discriminant))/(2 * first_coefficient)
  if discriminant === 0
    puts "Equation has one root: #{first_root}"
  else
    second_root = (-second_coefficient - Math.sqrt(discriminant))/(2 * first_coefficient)
    puts "Equation has two roots: #{first_root} and #{second_root}"
  end
end