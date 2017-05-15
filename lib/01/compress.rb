=begin
# just returns the compressed string; dont care if compressed string is longer than original string
def compress(string)
  string.downcase!
  compressed_string = ""
  count_consecutive = 1
  string.length.times do |i|
    if(string[i] == string[i+1])
      count_consecutive += 1
    else
      compressed_string << string[i]
      compressed_string << count_consecutive.to_s
      count_consecutive = 1
    end
  end
  return compressed_string
end

puts compress("aabccccaaa") == "a2b1c4a3" ? "correct" : "try again"
puts compress("mississippi") == "m1i1s2i1s2i1p2i1" ? "correct" : "try again"
puts compress("Aaargh") == "a3r1g1h1" ? "correct" : "try again"
puts compress("door-to-door") == "d1o2r1-1t1o1-1d1o2r1" ? "correct" : "try again"
puts compress("bookkeeper") == "b1o2k2e2p1e1r1" ? "correct" : "try again"
puts compress("bassoon") == "b1a1s2o2n1" ? "correct" : "try again"

############################

# returns compressed string if it's shorter than original; otherwise, the original string; followed book
def compress(string)
  string.downcase!
  compressed_string = ""
  count_consecutive = 0

  string.length.times do |i|
    count_consecutive += 1

    if(i+1 > string.length || string[i] != string[i+1])
      compressed_string << string[i] + count_consecutive.to_s
      count_consecutive = 0
    end
  end
  # return compressed_string
  return compressed_string.length < string.length ? compressed_string : string
end

# puts compress("aabccccaaa") == "a2b1c4a3" ? "correct" : "try again"
# puts compress("mississippi") == "m1i1s2i1s2i1p2i1" ? "correct" : "try again"
# puts compress("Aaargh") == "a3r1g1h1" ? "correct" : "try again"
# puts compress("door-to-door") == "d1o2r1-1t1o1-1d1o2r1" ? "correct" : "try again"
# puts compress("bookkeeper") == "b1o2k2e2p1e1r1" ? "correct" : "try again"
# puts compress("bassoon") == "b1a1s2o2n1" ? "correct" : "try again"

puts compress("aabccccaaa")
puts compress("mississippi")
puts compress("aaaaahh")
puts compress("bassoon")
=end

############################

# find which is shorter between original and compressed length in advance - optimal for cases where there's not a large number of repeating characters; followed book
def compress(string)
  string.downcase!
  compressed_string_length = count_compression_length(string)
  return string if compressed_string_length > string.length

  count_consecutive = 0
  compressed_string = ""

  string.length.times do |i|
    count_consecutive += 1
    if(i+1 > string.length || string[i] != string[i+1])
      compressed_string << string[i] + count_consecutive.to_s
      count_consecutive = 0
    end
  end
  return compressed_string
end

def count_compression_length(string)
  compression_length = 0
  count_consecutive = 0

  string.length.times do |i|
    count_consecutive += 1
    if(i+1 > string.length || string[i] != string[i+1])
      compression_length += 1 + string[count_consecutive].length
      count_consecutive = 0
    end
  end
  return compression_length
end

puts compress("aabccccaaa")
puts compress("mississippi")
puts compress("aaaaahh")
puts compress("bassoon")