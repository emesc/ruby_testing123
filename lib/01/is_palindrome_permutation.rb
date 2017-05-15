# Implement an algorithm that checks if a given string is a permutation of a palindrome

# A palindrome is a word or phrase that is the same forwards and backwards. It is not limited to dictionary words.

# will not count non-letter characters
def is_palindrome_permutation?(string)
  char_hash = Hash.new(0)
  string_length = 0

  string.length.times do |i|
    # count only letter characters
    if(string[i].match(/[a-zA-z]/))
      char_hash[string[i]] += 1
      string_length += 1
    end
  end

  # method1
  odd_values_count = char_hash.select{ |k, v| v.odd? }.length

  if string.length.odd?
    odd_values_count == 1 ? true : false
  else
    odd_values_count == 0 ? true : false
  end

  # method2: another way; odd_values_count cannot exceed 1

  odd_values_count = 0

  char_hash.each do |k, v|
    odd_values_count += 1 if v.odd?
    return false if odd_values_count > 1
  end

  return true
end


