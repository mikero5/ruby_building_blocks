require_relative '../caesar_cipher.rb'

RSpec.describe "#caesar_cipher" do
  
  describe "#caesar_cipher" do
    it "shifts input by 3 (encrypt)" do
      expect(caesar_cipher("too", 3)).to eql("wrr")
    end

    it "shifts input by -3 (decrypt)" do
      expect(caesar_cipher("wrr", -3)).to eql("too")
    end

    it "end of alphabet rotates to beginning on encrypt" do
      expect(caesar_cipher("xyz", 3)).to eql("abc")
    end

    it "beginning of alphabet rotates to end on decrypt" do
      expect(caesar_cipher("abc", -3)).to eql("xyz")
    end

    it "ignore punctuation" do
      expect(caesar_cipher("it's", 3)).to eql("lw'v")
    end

    it "ignore spaces" do
      expect(caesar_cipher("hello world", 3)).to eql("khoor zruog")
    end
  end
end
