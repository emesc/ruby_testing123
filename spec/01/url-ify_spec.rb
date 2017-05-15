require "01/url-ify"

describe "String to URL" do

  it "ignores whitespaces and transforms" do
    expect(urlify("Mr John Smith    ")).to eq("Mr%20John%20Smith")
    expect(urlify(" Mrs  Jane Doe")).to eq("Mrs%20Jane%20Doe")
    expect(urlify("   Bebe Doll    Parker ")).to eq("Bebe%20Doll%20Parker")
  end
end
