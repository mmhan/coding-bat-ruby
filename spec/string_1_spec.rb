require "string_1"

class String1Example
	extend String1
end

describe String1Example do
	describe ".hello_name" do
		it "should greet the name" do
			expect(described_class.hello_name "Mike").to eq("Hello Mike!")
			expect(described_class.hello_name "Rachel").to eq("Hello Rachel!")
			expect(described_class.hello_name "Sally").to eq("Hello Sally!")
		end
	end
	describe ".make_abba" do
		it "should combine two strings as abba" do
			expect(described_class.make_abba "a", "b").to eq("abba")
			expect(described_class.make_abba "Hi", "Bye").to eq("HiByeByeHi")
			expect(described_class.make_abba "What", "Up").to eq("WhatUpUpWhat")
		end
	end

	describe ".make_tags" do
		it "should make html tags with given content" do
			expect(described_class.make_tags "i", "Yay").to eq("<i>Yay</i>")
			expect(described_class.make_tags "i", "Hello").to eq("<i>Hello</i>")
			expect(described_class.make_tags "cite", "Yay").to eq("<cite>Yay</cite>")
		end
	end

	describe ".make_out_word" do
		it "should make out words" do
			expect(described_class.make_out_word '<<>>', 'Yay').to eq('<<Yay>>')
			expect(described_class.make_out_word '<<>>', 'WooHoo').to eq('<<WooHoo>>')
			expect(described_class.make_out_word '[[]]', 'word').to eq('[[word]]')
		end
	end

	describe ".extra_end" do
		it "should return 3 copies of the last two chars" do
			expect(described_class.extra_end "ab").to eq("ababab")
			expect(described_class.extra_end "Hi").to eq("HiHiHi")
		end
	end
	describe ".first_two" do
		it "should return the first two chars" do
			expect(described_class.first_two "Abcd").to eq("Ab")
			expect(described_class.first_two "abcdefg").to eq("ab")
			expect(described_class.first_two "ab").to eq("ab")
		end

		it "doesn't choke if string of length less than 2 is given" do
			expect(described_class.first_two "a").to eq("a")
			expect(described_class.first_two "").to eq("")
		end
	end

	describe ".first_half" do
		it "should return the first half of even length string" do
			expect(described_class.first_half "WooHoo").to eq("Woo")
			expect(described_class.first_half "HelloThere").to eq("Hello")
			expect(described_class.first_half "abcdef").to eq("abc")
		end
		it "should return nil for odd-length string" do
			expect(described_class.first_half "a").to eq(nil)
			expect(described_class.first_half "abc").to eq(nil)
		end
	end

	describe ".without_end" do
		it "should return without first/ending chars" do
			expect(described_class.without_end "Hello").to eq("ell")
			expect(described_class.without_end "java").to eq("av")
			expect(described_class.without_end "coding").to eq("odin")
		end
	end

	describe ".combo_string" do
		it "should wrap longer string with shorter string" do
			expect(described_class.combo_string "Hello", "hi").to eq("hiHellohi")
			expect(described_class.combo_string "hi", "Hello").to eq("hiHellohi")
			expect(described_class.combo_string "aaa", "b").to eq("baaab")
		end

		it "won't choke with equal length strings" do
			expect(described_class.combo_string "a", "b").to be_nil
		end
	end

	describe ".non_start" do
		it "returns concatenation of two strings omitting first char" do
			expect(described_class.non_start "Hello", "There").to eq("ellohere")
			expect(described_class.non_start "Hello", "World").to eq("elloorld")
			expect(described_class.non_start "shotl", "java").to eq("hotlava")
		end
	end

	describe ".left2" do
		it "returns rotated left 2 version of the string" do
			expect(described_class.left2 "Hello").to eq("lloHe")
			expect(described_class.left2 "java").to eq("vaja")
			expect(described_class.left2 "Hi").to eq("Hi")
			expect(described_class.left2 "Sat").to eq("tSa")
		end
	end
end