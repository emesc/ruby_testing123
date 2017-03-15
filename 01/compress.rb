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
