months = {
  january: 31,
  february: 28,
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

puts 'Enter a date'
days = gets.chomp.to_i
puts 'Enter a number of month (from 1 to 12)'
month = gets.chomp.to_i
puts 'Enter a year'
year = gets.chomp.to_i

is_year_leap = (year % 4 === 0) && (!(year % 100 === 0) || (year % 400 === 0))
previous_month_list = month == 1 ? [] : months.values[0..(month - 2)]
months[:february] = is_year_leap ? '29' : '28';

total_days = previous_month_list.sum + days

puts total_days
