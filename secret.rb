puts "Do you want to make a secret?? (Y/N)"
decision = gets.chomp.upcase
if decision == "Y"
	puts "What is your secret?"
	encode = gets.chars.map(&:ord)
	rnd = rand(1..9)
	shifted_forward = encode.map { |c| c + rnd }
	puts "Your secret message is:"
	puts shifted_forward.map { |c| c.chr }.join
	puts "This number #{rnd} may come in handy!"
elsif decision == "N"
	puts "What do you want to make clear?"
	decode = gets.chars.map(&:ord)
	puts "What's the number?"
	inp = gets.to_i
	shifted_backwards = decode.map { |c| c - inp }
	puts shifted_backwards.map { |c| c.chr }.join
else
	puts "Go away!!"
end