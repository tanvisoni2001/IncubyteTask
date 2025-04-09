class Calculator
	def add(numbers)
		return 0 if numbers.empty?
		numbers_with_commas = numbers.gsub("\n", ",")
		num_array = numbers_with_commas.split(',')
		sum = 0 
		num_array.each do |num|
			sum += num.to_i
		end
		return sum
	end
end

