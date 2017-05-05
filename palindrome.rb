require 'minitest/autorun'

class Palindrome_tester < Minitest::Test
	def test_is_palindrome?
		assert is_palindrome?('ata')
		assert !is_palindrome?('atb')
		assert is_palindrome?('aabbccddeeffgghhiijjj')
	end
end

def is_palindrome?(input)
	letter_count=get_letter_count(input)
	select_dict=letter_count.select{ |k, v| v%2==1 }
	if select_dict.length <= 1 
		return true
	else
		false
	end
end

def get_letter_count(input)
	dict={}
	for x in input.split('')
		dict[x]=input.count(x)
	end
	dict
end

puts get_letter_count('ata')