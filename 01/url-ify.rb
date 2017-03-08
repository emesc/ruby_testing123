def urlify(string)
  puts string.strip.gsub(/[ ]+/, "%20")
end

urlify("Mr John Smith    ")
urlify(" Mrs  Jane Doe")
urlify("   Bebe Doll    Parker ")
