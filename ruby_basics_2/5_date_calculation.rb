puts 'Enter a date'
day = gets.chomp.to_i
puts 'Enter a number of month (from 1 to 12)'
month = gets.chomp.to_i
puts 'Enter a year'
year = gets.chomp.to_i

year_leap = false

if year % 4 == 0
  if year % 100 == 0
    if year % 400 == 0
      year_leap = true
    else
      year_leap = false
    end
  else
    year_leap = true
  end
end

puts year
puts year_leap