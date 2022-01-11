puts "Hello! I can determine how many leap years there are between years! I just need to know starting and ending years."
puts "Starting Year:"
starting_year = gets.to_i
puts "Ending Year:"
ending_year = gets.to_i

array = starting_year..ending_year

div4 = array.count{ |x| x%4==0 }
div100 = array.count{ |x| x%100==0 }
div400 = array.count{ |x| x%400==0 }

leap_years = div4 - div100 + div400

puts leap_years