
Isigba Ambrose
1:50 AM
class Solver
  def factorial(number)
      if number < 0
          return "number must be greater than or equal to 0"
      end
      if number == 0
          return 1
      end
      return number * factorial(number-1)
  end
  def reverse(string)
      if string == ""
          return ""
      end
      return string.reverse
  end
  def fizzbuzz(number)
      return 'fizzbuzz' if (number %3 == 0 && number %5 == 0)
      return 'fizz' if (number %3 == 0)
      return 'buzz' if (number %5 == 0)
      return number
    end
end