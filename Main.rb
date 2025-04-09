class Calculator
	def add(numbers)
		return 0 if numbers.empty?
		delimiter = ',' #Default 
		string_numbers = numbers 
		if numbers.start_with?("//")
			delimiter_match = numbers.match(/^\/\/([^\n])\n/)
			if delimiter_match
				delimiter = delimiter_match[1]
				string_numbers = numbers[delimiter_match[0].length..-1]
			end
		end


		numbers_with_commas = string_numbers.gsub(delimiter, ',').gsub("\n", ",")
		num_array = numbers_with_commas.split(',')
		sum = 0 
		num_array.each do |num|
			sum += num.to_i
		end
		return sum
	end
end
	