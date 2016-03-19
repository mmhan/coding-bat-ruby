require "warmup_1"

class Warmup1Example
	extend Warmup1
end

describe Warmup1Example do
	describe ".sleep_in" do
		it "is OK when we are on vacation" do
			expect(described_class.sleep_in(true, true)).to eq(true)
			expect(described_class.sleep_in(false, true)).to eq(true)
		end
		it "is OK when it's not a weekday" do
			expect(described_class.sleep_in(false, true)).to eq(true)
			expect(described_class.sleep_in(false, false)).to eq(true)
		end
		it "is NOT OK when it's a weekday" do
			expect(described_class.sleep_in(true, false)).to eq(false)
		end
	end

	describe ".monkey_trouble" do
		it "should be trouble if both or neither are smiling" do
			expect(described_class.monkey_trouble(true, true)).to eq(true)
			expect(described_class.monkey_trouble(false, false)).to eq(true)
		end
		it "shouldn't be a problem otherwise" do
			expect(described_class.monkey_trouble(true, false)).to eq(false)
			expect(described_class.monkey_trouble(false, true)).to eq(false)
		end
	end

	describe ".sum_double" do
		it "returns sum" do
			expect(described_class.sum_double(1, 2)).to eq(3)
			expect(described_class.sum_double(3, 5)).to eq(8)
		end

		it "returns double the sum if the numbers are the same" do
			expect(described_class.sum_double(5, 5)).to eq(20)
			expect(described_class.sum_double(3, 3)).to eq(12)
		end
	end

	describe ".diff21" do
		it "returns absolute difference" do
			expect(described_class.diff21(20)).to eq(1)
			expect(described_class.diff21(10)).to eq(11)
			expect(described_class.diff21(21)).to eq(0)
		end

		it "returns double the absolute diff if n is over 21" do
			expect(described_class.diff21(22)).to eq(2)
			expect(described_class.diff21(41)).to eq(40)
		end
	end

	describe ".parrot_trouble" do
		it "is not trouble to talk between 7 and 20" do
			expect(described_class.parrot_trouble(true, 7)).to eq(false)
			expect(described_class.parrot_trouble(false, 6)).to eq(false)
		end
		it "is trouble to talk outside of 7 and 20" do
			expect(described_class.parrot_trouble(true, 6)).to eq(true)
			expect(described_class.parrot_trouble(true, 22)).to eq(true)
		end
	end

	describe ".makes10" do
		it "makes 10 if one of them is 10" do
			expect(described_class.makes10(9, 10)).to eq(true)
			expect(described_class.makes10(10, 1)).to eq(true)
		end
		it "makes 10 if sum of them is 10" do
			expect(described_class.makes10(9, 1)).to eq(true)
			expect(described_class.makes10(-2, 12)).to eq(true)
		end
		it "doesn't makes 10 otherwise" do
			expect(described_class.makes10(1, 1)).to eq(false)
			expect(described_class.makes10(-2, 5)).to eq(false)
		end
	end

	describe ".near_hundred" do

		let(:near_hundred) { [93, 90, 110, 105] }
		let(:near_two_hundred) { near_hundred.map { |num| num + 100 } }
		let(:not_near) { [10, 89, 120, 289, 211] }

		it "returns true if it is near hundred" do
			near_hundred.each do |num|
				expect(described_class.near_hundred(num)).to eq(true)
			end
		end
		it "returns true if it is near 2 hundred" do
			near_two_hundred.each do |num|
				expect(described_class.near_hundred(num)).to eq(true)
			end
		end
		it "returns false if it isn't near" do
			not_near.each do |num|
				expect(described_class.near_hundred(num)).to eq(false)
			end
		end
	end

	# pos_neg(1, -1, False) → True
	# pos_neg(-1, 1, False) → True
	# pos_neg(-4, -5, True) → True
	describe ".pos_neg" do
		it "returns true if only one num is negative" do
			expect(described_class.pos_neg(-1, 1)).to eq(true)
			expect(described_class.pos_neg(1, -1)).to eq(true)
			expect(described_class.pos_neg(-1, -1)).to eq(false)
			expect(described_class.pos_neg(1, 1)).to eq(false)
		end

		context "when true is given for negative param" do
			it "returns true only if both are negative" do
				expect(described_class.pos_neg(-1, -1, true)).to eq(true)
				expect(described_class.pos_neg(1, -1, true)).to eq(false)
				expect(described_class.pos_neg(-1, 1, true)).to eq(false)
				expect(described_class.pos_neg(1, 1, true)).to eq(false)
			end
		end
	end

	describe ".not_string" do
		it "adds not to normal string" do
			expect(described_class.not_string("x")).to eq("not x")
			expect(described_class.not_string("string")).to eq("not string")
			expect(described_class.not_string("string not")).to eq("not string not")
		end
		it "doesn't add to not string" do
			expect(described_class.not_string("not x")).not_to eq("not not x")
			expect(described_class.not_string("not string")).not_to eq("not not string")
		end
	end

	describe ".missing_char" do
		it "removes the char" do
			expect(described_class.missing_char("kitten", 1)).to eq("ktten")
			expect(described_class.missing_char("kitten", 0)).to eq("itten")
			expect(described_class.missing_char("kitten", 4)).to eq("kittn")
		end
	end

	describe ".front_back" do
		it "swaps characters from front and back" do
			expect(described_class.front_back("kitten")).to eq("nittek")
			expect(described_class.front_back("code")).to eq("eodc")
			expect(described_class.front_back("a")).to eq("a")
			expect(described_class.front_back("ab")).to eq("ba")
		end
	end

	describe ".front3" do
		it "returns thrice of the front (up to) 3 chars" do
			expect(described_class.front3('Java')).to eq('JavJavJav')
			expect(described_class.front3('Chocolate')).to eq('ChoChoCho')
			expect(described_class.front3('abc')).to eq('abcabcabc')
		end
	end
end