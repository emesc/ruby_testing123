require "01/is_permutation"

describe "A string" do

  context "is a permutation of the other" do

    it "returns true for permutation pairs" do
      expect(is_permutation?("words", "sword")).to eq true
      expect(is_permutation?("alcove", "vocale")).to eq true
    end

    it "is agnostic to cases" do
      expect(is_permutation?("Iceman", "cinema")).to eq true
    end
  end

  context "is not a permutation of the other" do

    it "returns false for non-permutation pairs" do
      expect(is_permutation?("true", "rude")).to eq false
      expect(is_permutation?("power", "lower")).to eq false
      expect(is_permutation?("forth", "fourth")).to eq false
    end 
  end
end
