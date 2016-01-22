puts "What is the current temperature?"
user_input = gets.chomp
user_input.downcase!
degrees = user_input.gsub(/[^0-9]/, '').to_f
if user_input.include? "c"
	user_metric_reversed = "Fahrenheit"
elsif user_input.include? "f"
	user_metric_reversed = "Celsius"
else
	puts "What unit is the current degrees your provided?"
	user_metric = gets.chomp
	user_metric.downcase!
	if user_input.include? "c"
		user_metric_reversed = "Fahrenheit"
	else user_input.include? "f"
		user_metric_reversed = "Celsius"
	end
end
if user_input.include? "c" or user_metric.include? "c"
	degrees_output = ((degrees * 1.8) + 32)
else
	degrees_output = ((degrees - 32) / 1.8)
end

print "The temperature is #{degrees_output} degrees in #{user_metric_reversed}"
