# A palindrome is a word or phrase that is the same forwards and backwards. It is not limited to dictionary words.

# will not count non-letter characters
def is_palindrome_permutation?(string)
  char_hash = Hash.new(0)

  string.length.times do |i|
    if string[i].match(/[a-zA-z]/)
      char_hash[string[i].downcase] += 1
    end
  end

  odd_values_count = 0

  char_hash.each do |k, v|
    odd_values_count += 1 if v.odd?
    return false if odd_values_count > 1
  end

  return true

  # # trying other's solution, not mine
  # char_hash = Hash.new(0)
  # str_length = 0

  # string.length.times do |i|
  #   if string[i].match(/[a-zA-z]/)
  #     char_hash[string[i].downcase] += 1
  #     str_length += 1
  #   end
  # end

  # puts char_hash
  # puts str_length

  # odd_values_count = char_hash.select{ |k, v| v.odd? }.length

  # puts odd_values_count

  # if str_length.odd?
  #   odd_values_count == 1 ? true : false
  # else
  #   odd_values_count == 0 ? true : false
  # end

end

puts is_palindrome_permutation?("civiceee")
puts is_palindrome_permutation?("civic")
puts is_palindrome_permutation?("barber")
puts is_palindrome_permutation?("radar")
puts is_palindrome_permutation?("lesson")
puts is_palindrome_permutation?("redder")
puts is_palindrome_permutation?("barb")
puts is_palindrome_permutation?("barbr")
puts is_palindrome_permutation?("spool")
puts is_palindrome_permutation?("madam")
puts is_palindrome_permutation?("aroma")
puts is_palindrome_permutation?("redivider")
puts is_palindrome_permutation?("sirs")
puts is_palindrome_permutation?("racecar")
puts is_palindrome_permutation?("pobbop")
