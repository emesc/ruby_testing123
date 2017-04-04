def is_palindrome?(string)
  string = accept_only_characters(string)
  if string.length <= 1
    return true
  else
    return string[0] == string[-1] && is_palindrome?(string[1..string.length-2])
  end
end

def accept_only_characters(string)
  string.downcase!
  new_string = ""

  string.length.times do |char|
    if "abcdefghlmnopqrstuvwxyz".include?(string[char])
      new_string += string[char]
    end
  end
  return new_string
end

puts is_palindrome?("guttug")
puts is_palindrome?("cinema")
puts is_palindrome?("abba")
puts is_palindrome?("episode")
puts is_palindrome?("Able was I ere I saw Elba")