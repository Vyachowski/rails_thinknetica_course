# First exercise
months = {
  january: 31,
  february: 28, # Note: Leap years not considered for simplicity
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

months.each do |month, days_number|
  if days_number === 30
    puts month
  end
end

# Second exercise
array = []
index = 10
while index <= 100
  array.push(index)
  index += 5
end

puts array