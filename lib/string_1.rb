module String1


	# Given a string name, e.g. "Bob", return a greeting of the form "Hello
	# Bob!".
	#
	# Examples:
	# hello_name('Bob') → 'Hello Bob!'
	# hello_name('Alice') → 'Hello Alice!'
	# hello_name('X') → 'Hello X!'
	def hello_name(name)
		"Hello #{name}!"
	end

	# Given two strings, a and b, return the result of putting them together in
	# the order abba, e.g. "Hi" and "Bye" returns "HiByeByeHi".
	#
	# Examples:
	# make_abba('Hi', 'Bye') → 'HiByeByeHi'
	# make_abba('Yo', 'Alice') → 'YoAliceAliceYo'
	# make_abba('What', 'Up') → 'WhatUpUpWhat'
	def make_abba(str_a, str_b)
		str_a + str_b + str_b + str_a
	end


	# The web is built with HTML strings like "<i>Yay</i>" which draws Yay as
	# italic text. In this example, the "i" tag makes <i> and </i> which
	# surround the word "Yay". Given tag and word strings, create the HTML
	# string with tags around the word, e.g. "<i>Yay</i>".
	#
	# Examples:
	# make_tags('i', 'Yay') → '<i>Yay</i>'
	# make_tags('i', 'Hello') → '<i>Hello</i>'
	# make_tags('cite', 'Yay') → '<cite>Yay</cite>'
	def make_tags(tag, str)
		"<#{tag}>#{str}</#{tag}>"
	end


	# Given an "out" string length 4, such as "<<>>", and a word, return a new
	# string where the word is in the middle of the out string, e.g. "<<word>>".
	#
	# Examples:
	# make_out_word('<<>>', 'Yay') → '<<Yay>>'
	# make_out_word('<<>>', 'WooHoo') → '<<WooHoo>>'
	# make_out_word('[[]]', 'word') → '[[word]]'
	def make_out_word(out, word)
		out[0..1] + word + out[2..3]
	end

	# Given a string, return a new string made of 3 copies of the last 2 chars
	# of the original string. The string length will be at least 2.
	#
	# Examples:
	# extra_end('Hello') → 'lololo'
	# extra_end('ab') → 'ababab'
	# extra_end('Hi') → 'HiHiHi'
	def extra_end(str)
		str[-2..-1] * 3
	end


	# Given a string, return the string made of its first two chars, so the
	# String "Hello" yields "He". If the string is shorter than length 2, return
	# whatever there is, so "X" yields "X", and the empty string "" yields the
	# empty string "".
	#
	# Example:
	# first_two('Hello') → 'He'
	# first_two('abcdefg') → 'ab'
	# first_two('ab') → 'ab'
	def first_two(str)
		str[0..1]
	end


	# Given a string of even length, return the first half. So the string
	# "WooHoo" yields "Woo".
	#
	# Example:
	# first_half('WooHoo') → 'Woo'
	# first_half('HelloThere') → 'Hello'
	# first_half('abcdef') → 'abc'
	def first_half(str)
		return nil if str.length % 2 != 0

		end_of_result = (str.length / 2) - 1
		str[0..end_of_result]
	end

	# Given a string, return a version without the first and last char, so
	# "Hello" yields "ell". The string length will be at least 2.
	#
	# Examples:
	# without_end('Hello') → 'ell'
	# without_end('java') → 'av'
	# without_end('coding') → 'odin'
	def without_end(str)
		str[1..(str.length - 2)]
	end


	# Given 2 strings, a and b, return a string of the form short+long+short,
	# with the shorter string on the outside and the longer string on the
	# inside. The strings will not be the same length, but they may be empty
	# (length 0).
	#
	# Examples:
	# combo_string('Hello', 'hi') → 'hiHellohi'
	# combo_string('hi', 'Hello') → 'hiHellohi'
	# combo_string('aaa', 'b') → 'baaab'
	def combo_string(str_a, str_b)
		return nil if str_a.length == str_b.length

		if str_a.length > str_b.length
			longer = str_a
			shorter = str_b
		else
			longer = str_b
			shorter = str_a
		end

		shorter + longer + shorter
	end

	# Given 2 strings, return their concatenation, except omit the first char of
	# each. The strings will be at least length 1.   Example:
	#
	# Example:
	# non_start('Hello', 'There') → 'ellohere'
	# non_start('java', 'code') → 'avaode'
	# non_start('shotl', 'java') → 'hotlava'
	def non_start(first, second)
		first[1..first.length - 1] + second[1..second.length - 1]
	end


	# Given a string, return a "rotated left 2" version where the first 2 chars
	# are moved to the end. The string length will be at least 2.
	#
	# Examples:
	# left2('Hello') → 'lloHe'
	# left2('java') → 'vaja'
	# left2('Hi') → 'Hi'
	def left2(str)
		str[2..str.length - 1] + str[0..1]
	end
end