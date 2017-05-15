# Implement an algorithm to determine if a string is a permutation of the other

# Solution 1
# case insensitive, test if they have the same characters
def is_permutation1?(string1, string2)
  string1.downcase.chars.sort == string2.downcase.chars.sort
end

# case sensitive, test if they have the same character count
def is_permutation?(string1, string2)
  string1_hash = Hash.new(0)
  string2_hash = Hash.new(0)

  return false if string1.length != string2.length

  string1.length.times do |i|
    string1_hash[string1[i]] += 1
  end

  string2.length.times do |i|
    string2_hash[string2[i]] += 1
  end

  string2_hash.each do |k, v|
    return false if string1_hash[k] != v
  end

  return true
end
