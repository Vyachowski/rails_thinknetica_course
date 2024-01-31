fibonacci_array = [0, 1]
next_value = 0
while next_value <= 100
  first_operand = fibonacci_array[fibonacci_array.length - 1]
  second_operand = fibonacci_array[fibonacci_array.length - 2]
  next_value = first_operand + second_operand

  if next_value <= 100
    fibonacci_array.push(next_value)
  end
end

puts fibonacci_array