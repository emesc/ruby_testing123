# Implement an algorithm that replaces space character with "%20"

# replaces consecutive spaces with a single "%20"
def urlify(string)
  puts string.strip.gsub(/[ ]+/, "%20")
end

urlify("Mr John Smith    ")
urlify(" Mrs  Jane Doe")
urlify("   Bebe Doll    Parker ")
