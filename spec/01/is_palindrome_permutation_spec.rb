require "01/is_palindrome_permutation"

describe "String" do
  
  it "is a permutation of a palindrome" do
    expect(is_palindrome_permutation?("civic")).to eq true
    expect(is_palindrome_permutation?("vicic")).to eq true
    expect(is_palindrome_permutation?("radar")).to eq true
    expect(is_palindrome_permutation?("adarr")).to eq true
  end

  it "is not a permutation of a palindrome" do
    expect(is_palindrome_permutation?("lesson")).to eq false
    expect(is_palindrome_permutation?("barb")).to eq false
    expect(is_palindrome_permutation?("racecars")).to eq false
  end
end


# is_palindrome_permutation?("civiceee")
# is_palindrome_permutation?("civic")
# is_palindrome_permutation?("barber")
# is_palindrome_permutation?("radar")
# is_palindrome_permutation?("lesson")
# is_palindrome_permutation?("redder")
# is_palindrome_permutation?("barb")
# is_palindrome_permutation?("barbr")
# is_palindrome_permutation?("spool")
# is_palindrome_permutation?("madam")
# is_palindrome_permutation?("aroma")
# is_palindrome_permutation?("redivider")
# is_palindrome_permutation?("sirs")
# is_palindrome_permutation?("racecar")
# is_palindrome_permutation?("pobbop")
