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
  end
end