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
end