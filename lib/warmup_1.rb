module Warmup1

	# The parameter weekday is True if it is a weekday,
	# and the parameter vacation is True if we are on vacation.
	# We sleep in if it is not a weekday or we're on vacation. Return True if we sleep in.
	#
	# Example:
	# sleep_in(false, true)
	# => true
	# sleep_in(true, false)
	# => false
	# sleep_in(false, true)
	# => true
	def sleep_in(weekday, vacation)
		vacation || !weekday
	end

	# We have two monkeys, a and b, and the parameters a_smile and b_smile
	# indicate if each is smiling. We are in trouble if they are both smiling or
	# if neither of them is smiling. Return True if we are in trouble.
	#
	# Example:
	# monkey_trouble(false, false)
	# => true
	# monkey_trouble(true, true)
	# => true
	# else:
	# => false
	def monkey_trouble(a_smile, b_smile)
		(a_smile && b_smile) || !(a_smile || b_smile)
	end

	# Given two int values, return their sum. Unless the two values are the
	# same, then return double their sum.
	#
	# Example:
	# sum_double(1, 2) → 3
	# sum_double(3, 2) → 5
	# sum_double(2, 2) → 8
	def sum_double(one, two)
		sum = one + two
		if one == two
			sum *= 2
		end
		sum
	end


	# Given an int n, return the absolute difference between n and 21, except
	# return double the absolute difference if n is over 21.
	#
	# Example:
	# diff21(19) → 2
	# diff21(10) → 11
	# diff21(21) → 0
	def diff21(n)
		diff = (n - 21).abs
		if n > 21
			diff *= 2
		end
		diff
	end

	# We have a loud talking parrot. The "hour" parameter is the current hour
	# time in the range 0..23. We are in trouble if the parrot is talking and
	# the hour is before 7 or after 20. Return True if we are in trouble.
  #
  # Example:
	# parrot_trouble(True, 6) → True
	# parrot_trouble(True, 7) → False
	# parrot_trouble(False, 6) → False
	def parrot_trouble(talking, hour)
		talking && !(7..20).include?(hour)
	end

	# Given 2 ints, a and b, return True if one if them is 10 or if their sum is
	# 10.
	#
	# Example:
	# makes10(9, 10) → True
	# makes10(9, 9) → False
	# makes10(1, 9) → True
	def makes10(one, two)
		one == 10 || two == 10 || one + two == 10
	end


	# Given an int n, return True if it is within 10 of 100 or 200. Note: abs(num) computes the absolute value of a number.
	#
	# Example:
	# near_hundred(93) → True
	# near_hundred(90) → True
	# near_hundred(89) → False
	def near_hundred(number)
		(100 - number).abs <= 10 ||
			(200 - number).abs <= 10
	end

	# Given 2 int values, return True if one is negative and one is positive.
	# Except if the parameter "negative" is True, then return True only if both
	# are negative.
	#
	# Example:
	# pos_neg(1, -1, False) → True
	# pos_neg(-1, 1, False) → True
	# pos_neg(-4, -5, True) → True
	def pos_neg(one, two, negative = false)
		if negative
			one < 0 && two < 0
		else
			(one < 0 && two > 0) || (one > 0 && two < 0)
		end
	end

	# Given a string, return a new string where "not " has been added to the
	# front. However, if the string already begins with "not", return the string
	# unchanged.
	#
	# Example:
	# not_string('candy') → 'not candy'
	# not_string('x') → 'not x'
	# not_string('not bad') → 'not bad
	def not_string(str)
		if str[/^not/]
			str
		else
			"not " + str
		end
	end

	# Given a non-empty string and an int n, return a new string where the char
	# at index n has been removed. The value of n will be a valid index of a
	# char in the original string (i.e. n will be in the range 0..len(str)-1
	# inclusive).
	#
	# Example:
	# missing_char('kitten', 1) → 'ktten'
	# missing_char('kitten', 0) → 'itten'
	# missing_char('kitten', 4) → 'kittn'
	def missing_char(str, index)
		str[index] = ""
		str
	end

	# Given a string, return a new string where the first and last chars have
	# been exchanged.
	#
	# Example:
	# front_back('code') → 'eodc'
	# front_back('a') → 'a'
	# front_back('ab') → 'ba'
	def front_back(str)
		result = str.clone
		result[-1] = str[0]
		result[0] = str[-1]
		result
	end


	# Given a string, we'll say that the front is the first 3 chars of the string. If the string length is less than 3, the front is whatever is there. Return a new string which is 3 copies of the front. 
	#
	# Example:
	# front3('Java') → 'JavJavJav'
	# front3('Chocolate') → 'ChoChoCho'
	# front3('abc') → 'abcabcabc'
	def front3(str)
		str[0..2] * 3
	end
end