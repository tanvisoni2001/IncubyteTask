class Calculator
	def add(numbers)
		return 0 if numbers.empty?
		num_array = numbers.split(',')
		sum = 0 
		num_array.each do |num|
			sum += num.to_i
		end
		return sum
	end
end


