module Warmup2

	# Given a string and a non-negative int n, return a larger string that is n
	# copies of the original string.
	#
	# Example:
	# string_times('Hi', 2) → 'HiHi'
	# string_times('Hi', 3) → 'HiHiHi'
	# string_times('Hi', 1) → 'Hi'
	def string_times(str, times)
		str * times
	end


	# Given a string and a non-negative int n, we'll say that the front of the
	# string is the first 3 chars, or whatever is there if the string is less
	# than length 3. Return n copies of the front;
	#
	# Example:
	# front_times('Chocolate', 2) → 'ChoCho'
	# front_times('Chocolate', 3) → 'ChoChoCho'
	# front_times('Abc', 3) → 'AbcAbcAbc'
	def front_times(str, times)
		str[0..2] * times
	end

	# Given a string, return a new string made of every other char starting with
	# the first, so "Hello" yields "Hlo".
  #
  # Example:
	# string_bits('Hello') → 'Hlo'
	# string_bits('Hi') → 'H'
	# string_bits('Heeololeo') → 'Hello'
	def string_bits(str)
		result = ""
		(0..(str.length - 1)).each do |i|
			result += str[i] if i % 2 == 0
		end
		result
	end


	# Given a non-empty string like "Code" return a string like "CCoCodCode".
	#
	# Example:
	# string_splosion('Code') → 'CCoCodCode'
	# string_splosion('abc') → 'aababc'
	# string_splosion('ab') → 'aab'
	def string_splosion(str)
		result = ""
		(0..(str.length - 1)).each do |i|
			result += str[0..i]
		end
		result
	end


	# Given a string, return the count of the number of times that a substring
	# length 2 appears in the string and also as the last 2 chars of the string,
	# so "hixxxhi" yields 1 (we won't count the end substring).
	#
	# Example:
	# last2('hixxhi') → 1
	# last2('xaxxaxaxx') → 1
	# last2('axxxaaxx') → 2
	def last2(str)
		return 0 if str.length < 2

		match = str[-2..-1]
		result = 0
		(0..(str.length - 3)).each do |i|
			result += 1 if match == str[i..i+1]
		end
		result
	end

	# Given an array of ints, return the number of 9's in the array.
	#
	# Examples:
	# array_count9([1, 2, 9]) → 1
	# array_count9([1, 9, 9]) → 2
	# array_count9([1, 9, 9, 3, 9]) → 3
	def array_count9(arr)
		arr.count { |n| n == 9 }
	end

	# Given an array of ints, return True if one of the first 4 elements in the
	# array is a 9. The array length may be less than 4.
	#
	# Examples:
	# array_front9([1, 2, 9, 3, 4]) → True
	# array_front9([1, 2, 3, 4, 9]) → False
	# array_front9([1, 2, 3, 4, 5]) → False
	def array_front9(arr)
		i = 0
		arr.any? do |n|
			tally = n == 9 && i <= 3
			i+= 1
			tally
		end
	end


	# Given an array of ints, return True if .. 1, 2, 3, .. appears in the array
	# somewhere.
	#
	# Example:
	# array123([1, 1, 2, 3, 1]) → True
	# array123([1, 1, 2, 4, 1]) → False
	# array123([1, 1, 2, 1, 2, 3]) → True
	def array123(arr)
		(0..(arr.length - 3)).each do |n|
			return true if arr[n] == 1 && arr[n + 1] == 2 && arr[n + 2] == 3
		end
		return false
	end
end