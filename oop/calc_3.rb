# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

  def self.add(first_number, second_number)
    first_number + second_number
  end

  def self.subtract(first_number, second_number)
    first_number - second_number
  end

  def self.multiply(first_number, second_number)
    first_number * second_number
  end

  def self.divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator < SimpleCalculator

  def self.square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def self.hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def self.exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end


puts "Testing WhizBangCalculator"

result = WhizBangCalculator.multiply(2,6)

puts "Your method returned:"
puts result
puts

if result == "12"
  puts "PASS!"
else
  puts "F"
end

