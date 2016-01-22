def temperature()
	
puts "What temperature do you want to convert to (C or F)?"
user_metric = gets.chomp
puts "What is the current temperature?"
user_temperature = gets.chomp

if user_metric = C
	then user_metric_reversed = "Fahrenheit"
else
	user_metric_reversed = "Celsius"

if user_metric = C
	then unit_conversion = user_temperature * 1.8 + 32
else
	unit_conversion = (user_temperature - 32) / 1.8

print "The temperature is #{unit_conversion} degrees in #{user_metric_reversed}"
end