print('Enter your height: ')
height = Integer(gets.chomp)

print('Enter your name: ')
name = gets.chomp.capitalize

ideal_weight = (height - 110) * 1.15

if ideal_weight > 0
  puts("Your ideal weight is #{ideal_weight}, #{name}")
else
  puts("Your weight is already optimal, congrats, #{name}!")
end