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

end