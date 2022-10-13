# frozen_string_literal: true

require './solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end
  # if n  = 0 , return 1
  # if n  > 0 , return facatorial of n
  # if n < 0, return error message
  # test the factorial method
  describe '#factorial' do
    it 'returns 1 when n is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end
    it 'returns 120 when n is 5' do
      expect(@solver.factorial(5)).to eq(120)
    end
    it 'returns error message when n is negative' do
      expect(@solver.factorial(-1)).to eq('number must be greater than or equal to 0')
    end
  end
  # Test the reverse method
  describe '#reverse' do
    it "returns 'olleh' when input is 'hello'" do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
    it "returns 'h' when input is 'h'" do
      expect(@solver.reverse('h')).to eq('h')
    end
    it "returns '' when input is ''" do
      expect(@solver.reverse('')).to eq('')
    end
  end

  # Test the fizzbuzz method
  describe '#fizzbuzz' do
    it 'if number is divisible by 3, returns fizz ' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'if number is divisible by 5, returns buzz' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end
    it 'if number is divisible by 15, returns fizzbuzz' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'if number is not divisible by 3 or 5, returns the number' do
      expect(@solver.fizzbuzz(7)).to eq(7)
    end
  end
end
