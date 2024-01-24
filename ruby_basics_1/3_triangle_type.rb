puts 'This program can define a type of given triangle by its sides.'

print 'What is the length of the first side? '
first_side = Float(gets.chomp)

print 'What is the length of the second side? '
second_side = Float(gets.chomp)

print 'What is the length of the third side? '
third_side = Float(gets.chomp)

if first_side >= second_side && first_side >= third_side
  longest_side = first_side
elsif second_side >= third_side && second_side >= third_side
  longest_side = second_side
else
  longest_side = third_side
end

if first_side === second_side && second_side === third_side
  puts("The triangle is equilateral!")
elsif first_side === second_side || first_side === third_side || second_side === third_side
  puts("The triangle is isosceles!")
elsif longest_side ** 2 === first_side ** 2 + second_side ** 2 + third_side ** 2 - longest_side ** 2
  puts("The triangle is right-angled!")
end