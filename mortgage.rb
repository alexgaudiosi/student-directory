def provide_mortgage?(salary, deposit, property_value)
	loan_amount = property_value - deposit
	min_deposit = property_value < 650000 ? 0.05 : 0.2
	max_multiplier = 5
	deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount}


end

def customer_details
		puts "What is your annual salary?"
			salary = gets.chomp.to_i
		puts "What is your deposit amount?"
			deposit = gets.chomp.to_i
		puts "What is the value of the property?"
			property_value = gets.chomp.to_i
	


			[salary, deposit, property_value]
end

def print_decision(decision)
	if decision
			puts "Enjoy the house!"
	else
			puts "You're broke, mayn."
	end
end


#def bankrupt(provide_mortgage?)
#	if customer

salary, deposit, property_value = customer_details
decision = provide_mortgage?(salary, deposit, property_value)
print_decision(decision)




