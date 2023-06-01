def PrimeTime(num)
  for x in 2..10
    if x == num
      next
    elsif num % x == 0
      return "false"
    end
  end

  return "true"
end

# Test cases
puts PrimeTime(19)      # Output: true
puts PrimeTime(110)     # Output: false
puts PrimeTime(2)       # Output: true
puts PrimeTime(4)       # Output: false
puts PrimeTime(5)       # Output: true
puts PrimeTime(432)     # Output: false
puts PrimeTime(784546)  # Output: false
