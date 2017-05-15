# Implement an algorithm that replaces space character with "%20"

# replaces consecutive spaces with a single "%20"
def urlify(string)
  return string.strip.gsub(/[ ]+/, "%20")
end
