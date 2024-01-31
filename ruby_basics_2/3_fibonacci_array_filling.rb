fibonacci_array = [0, 1]
new_value = 0
while new_value <= 100
  first_operand = fibonacci_array[fibonacci_array.length - 1]
  second_operand = fibonacci_array[fibonacci_array.length - 2]
  new_value = first_operand + second_operand

  if new_value <= 100
    fibonacci_array.push(new_value)
  end
end

puts fibonacci_array