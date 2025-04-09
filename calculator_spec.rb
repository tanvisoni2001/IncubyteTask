# require 'rails_helper'
require 'rspec'
require './Main.rb'

describe Calculator do 
  subject(:calculator){Calculator.new}

  describe '#Add' do 
    context 'when the input is empty or 0' do
      it 'output will be 0' do
        expect(calculator.add("")).to eq(0) 
      end 
    end

    context 'when the input string contains single number' do 
      it 'returns the given number' do 
        expect(calculator.add("1")).to eq(1)
      end
    end

    context 'when the input string contains more than single number' do 
      it 'return the sum of all numbers' do 
        expect(calculator.add("1,3,5")).to eq(9)
      end
    end 
    
    context 'when the input string contains new line as delimiters between numbers' do 
      it 'handles the new lines and return sum of all string numbers' do 
        expect(calculator.add("3\n5,6")).to eq(14)
        expect(calculator.add("10\n20\n30")).to eq(60)
      end
    end

    context 'when a custom delimeter specified in string' do 
      it 'handles the custom delimeter specified at the beginnng for the string' do 
        expect(calculator.add("//;\n10;20")).to eq(30)
        expect(calculator.add("//@\n1@8@2")).to eq(11)
      end
      it 'handles a custom delimiter and newlines as delimiters' do
        expect(calculator.add("//a\n1a2\n3")).to eq(6)
        expect(calculator.add("//|\n10|20\n30")).to eq(60)
      end  
    end
  end
end