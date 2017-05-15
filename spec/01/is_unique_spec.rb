require "01/is_unique"

describe String do

  context "with unique characters" do

    it "is true for an input of false" do
      expect(is_unique?("false")).to eq true
    end

    it "is true for input compute" do
      expect(is_unique?("compute")).to eq true
    end
  end

  context "with repeating characters" do

    it "is false for an input of array" do
      expect(is_unique?("array")).to eq false
    end

    it "is false for an input of added" do
      expect(is_unique?("added")).to eq false
    end
  end
end
