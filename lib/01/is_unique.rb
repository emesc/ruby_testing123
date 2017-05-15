# Implement an algorithm to determine if a string has all unique characters

def is_unique?(string)
    string_hash = Hash.new(0)

    string.length.times do |i|
      string_hash[string[i]] += 1
      return false if string_hash[string[i]] > 1
    end

    return true
end
