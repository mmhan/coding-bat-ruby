require "warmup_2"

class Warmup2Example
	extend Warmup2
end

describe Warmup2Example do
	describe ".string_times" do
		it "multiplies a string" do
			expect(described_class.string_times("Hi", 2)).to eq("HiHi")
			expect(described_class.string_times("Hi", 3)).to eq("HiHiHi")
			expect(described_class.string_times("Hi", 1)).to eq("Hi")
		end
	end

	describe ".front_times" do
		it "multiplies the front 3 chars" do
			expect(described_class.front_times("Chocolate", 2)).to eq("ChoCho")
			expect(described_class.front_times("Chocolate", 3)).to eq("ChoChoCho")
			expect(described_class.front_times("Abc", 1)).to eq("Abc")
			expect(described_class.front_times("Ab", 3)).to eq("AbAbAb")
		end
	end

	describe ".string_bits" do
		it "retrieves every other chars starting with the first" do
			expect(described_class.string_bits("Hello")).to eq("Hlo")
			expect(described_class.string_bits("Hi")).to eq("H")
			expect(described_class.string_bits("Heeololeo")).to eq("Hello")
		end
	end

	describe ".string_splosion" do
		it "explodes and implode chars of a string" do
			expect(described_class.string_splosion("Code")).to eq("CCoCodCode")
			expect(described_class.string_splosion("abc")).to eq("aababc")
			expect(described_class.string_splosion("ab")).to eq("aab")
		end
	end

	describe ".last2" do
		it "counts the number of times the last 2 chars appears in the string" do
			expect(described_class.last2("hixxhi")).to eq(1)
			expect(described_class.last2("xaxxaxaxx")).to eq(1)
			expect(described_class.last2("axxxaaxx")).to eq(2)
			expect(described_class.last2("aaaaaaxx")).to eq(0)
		end
	end
end