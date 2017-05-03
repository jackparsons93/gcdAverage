require 'minitest/autorun'


class GCDTest < Minitest::Test 
  def test_euclid_gcd
  	gcdTestObject=GCD.new(20,5)
  	assert gcdTestObject.euclidGcd==5
 		assert gcdTestObject.gcdRemainderSteps==1
  	
 	end

 	def test_euclid_two
 		gcdTestObject=GCD.new(13,8)
 		assert gcdTestObject.euclidGcd==1 
  	assert gcdTestObject.gcdRemainderSteps==5
	end

	def test_euclid_loop
		gcdTestObject=GCD.new(0,0)
		assert gcdTestObject.gcdOfFiveUpToFive==[1,1,1,1,5]
	end 

end



class GCD
	attr_accessor :m,:n
	attr_reader :count 
	def initialize(m,n)
		@m=m
		@n=n
		@count=0
	end

	def euclidGcd
		@count=1
		m=@m 
		n=@n
		r= m % n
		until r==0 
			m=n
			n=r
			r= m % n
			@count+=1
		end
		return n 	
	end

	def gcdRemainderSteps
		return @count
	end

	def gcdOfFiveUpToFive
		@m=5
		gcdArrayUpToFive=[]
		for x in 1..5
			@n=x
			gcdArrayUpToFive << euclidGcd
		end
		return gcdArrayUpToFive
	end

end

