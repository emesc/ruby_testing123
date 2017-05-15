require "01/compress.rb"

describe "String Compression" do

  it "returns correct output for the string aabccccaaa" do
    expect(compress("aabccccaaa")).to eq "a2b1c4a3"
  end

  it "returns correct output for the string mississippi" do
    expect(compress("mississippi")).to eq "mississippi"
  end

  it "returns correct output for the string Aaargh" do
    expect(compress("Aaargh")).to eq "Aaargh"
  end

  it "returns correct output for the string door-to-door" do
    expect(compress("door-to-door")).to eq "door-to-door"
  end
end
