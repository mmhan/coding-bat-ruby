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
end