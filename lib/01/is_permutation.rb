# Implement an algorithm to determine if a string is a permutation of the other

# Solution 1
# case insensitive, test if they have the same characters
def is_permutation1?(string1, string2)
  return string1.downcase.chars.sort == string2.downcase.chars.sort
end

# Solution 2
# case insensitive, test if they have the same character count
def is_permutation?(string1, string2)
  string1_hash = Hash.new(0)
  string2_hash = Hash.new(0)

  string1.length.times do |i|
    string1_hash[string1[i].downcase] += 1
  end

  string2.length.times do |i|
    string2_hash[string2[i].downcase] += 1
  end

  string2_hash.each do |k, v|
    return false if string1_hash[k] != v
  end

  return true
end

puts is_permutation?("words", "sword")
puts is_permutation?("true", "rude")
puts is_permutation?("alcove", "vocale")
puts is_permutation?("power", "lower")
puts is_permutation?("Iceman", "cinema")
puts is_permutation?("forth", "forrt")

