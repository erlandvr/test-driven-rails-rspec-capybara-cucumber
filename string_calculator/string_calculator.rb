require 'minitest/autorun'

#creating a calculater class, which will have a stream of numbers on initialization

class Calculator
  attr_reader :digits

  def initialize(digits_string)
    @digits = parse_input(digits_string)
  end

  def sum
    digits.inject(:+)
  end

  def multiply
    digits.inject(:*)
  end

  private

  def parse_input(str)
    str.split(',').map { |n| n.to_i}
  end

end

describe Calculator do
 it 'sums provided digits' do
   calc = Calculator.new('1,2,3,4,5')
   calc.sum.must_equal(15)
 end

  it 'multiplies provided digits' do
    calc = Calculator.new('1,2,3')
    calc.multiply.must_equal(6)
  end
end
