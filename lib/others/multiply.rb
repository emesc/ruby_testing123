def multiply(num1, num2)
  if num2 == 1
    return num1
  else
    return num1 + multiply(num1, num2 - 1)
  end
end

puts multiply(3, 4)
puts multiply(8, 6)
puts multiply(5, 9)
puts multiply(2, 10)
puts multiply(7, 7)