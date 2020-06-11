require_relative "../lib/pass5.rb"

describe PrimeFactors do

  describe "self.calculate(number)" do

    it "returns [] for 1" do
      expect(PrimeFactors.calculate(1)).to eq []
    end

    it "returns [2] for 2" do
      expect(PrimeFactors.calculate(2)).to eq [2]
    end

    it "returns [3] for 3" do
      expect(PrimeFactors.calculate(3)).to eq [3]
    end

    it "returns [4, 4] for 4" do
      expect(PrimeFactors.calculate(4)).to eq [2, 2]
    end

    it "returns [2, 3] for 6" do
      expect(PrimeFactors.calculate(6)).to eq [2, 3]
    end

    it "returns [2, 2, 2] for 8" do
      expect(PrimeFactors.calculate(8)).to eq [2, 2, 2]
    end

    it "returns [3, 3] for 9" do
      expect(PrimeFactors.calculate(9)).to eq [3, 3]
    end

  end

end
