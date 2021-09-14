# Write a program that can be used to play FizzBuzz.  It should
# Have one class called FizzBuzz
# The FizzBuzz class should have four methods
#
# `play_until'
#   * takes a number as it's argument
#   * returns the FizzBuzz sequence up to that number
#
# `divisible_by_three`
#   * takes a number as it's argument
#   * returns true if that number is divisible by three
#
# `divisible_by_five`
#   * takes a number as it's argument
#   * returns true if that number is divisible by three
#
# `divisible_by_fifteen`
#   * takes a number as it's argument
#   * returns true if that number is divisible by fifteen (i.e. both 3 and 5)

class FizzBuzz
  def play_until(num)
    sequence = (1..num).to_a
    my_fizzbuzz = []
    sequence.each do |x|
      if divisible_by_fifteen(x) == true
        my_fizzbuzz.push("FizzBuzz")
      elsif divisible_by_three(x) == true
        my_fizzbuzz.push("Fizz")
      elsif divisible_by_five(x) == true
        my_fizzbuzz.push("Buzz")
      else
        my_fizzbuzz.push(x.to_s)
      end
    end
    return my_fizzbuzz
  end

  def divisible_by_three(num)
    if num % 3 == 0
      return true
    else
      return false
    end
  end

  def divisible_by_five(num)
    if num % 5 == 0
      return true
    else
      return false
    end
  end

  def divisible_by_fifteen(num)
    if num % 15 == 0
      return true
    else
      return false
    end
  end
end

# play_fizzbuzz = FizzBuzz.new
# play_fizzbuzz.play_until(15)