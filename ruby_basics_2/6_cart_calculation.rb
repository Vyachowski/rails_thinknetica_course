cart = {}
total_sum = 0

loop do
  puts 'Please enter a merchandise name or "Stop" to checkout'
  merchandise_name = gets.chomp.downcase
  break if merchandise_name == 'stop'
  puts 'Please enter a price for the merchandise'
  merchandise_price = gets.chomp.to_f
  puts 'Please enter amount of the merchandise'

  merchandise_amount = gets.chomp.to_f
  merchandise = {
    price: merchandise_price,
    amount: merchandise_amount,
    sum: (merchandise_price * merchandise_amount),
  }

  total_sum += merchandise[:sum]
  cart[merchandise_name.to_sym] = merchandise

  puts "Price is #{merchandise[:price]}, amount #{merchandise[:amount]}. Total sum for the goods is #{merchandise[:sum]}"
end

puts "Please review your order: #{cart}"
puts "Total cost is: #{total_sum}"
