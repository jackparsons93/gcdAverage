require 'minitest/autorun'
class GCDTest < Minitest::Test 
  def test_euclid_gcd
    gcdTestObject=GCD.new
    assert gcdTestObject.euclid_gcd(20, 5)==5
    assert gcdTestObject.gcd_remainder_steps==1    
  end
  def test_euclid_two
    gcdTestObject=GCD.new
    assert gcdTestObject.euclid_gcd(13, 8)==1 
    assert gcdTestObject.gcd_remainder_steps==5
  end
	def test_euclid_loop
    gcdTestObject=GCD.new
    assert gcdTestObject.gcd_of_5_up_to_5==[1,1,1,1,5]
  end 
  def test_count_of_loop
    gcdTestObject=GCD.new
    assert gcdTestObject.remainder_steps_up_to_5==[1,2,3,2,1]
  end
end

class GCD
  def euclid_gcd(m, n)
    @count=1
    r= m % n
    until r==0 
      m=n
      n=r
      r= m % n
      @count+=1
    end
		n  
  end

  def gcd_remainder_steps
  	@count
  end

  def gcd_of_5_up_to_5
  	gcdArrayUpToFive=[]
    (1..5).map { |x| gcdArrayUpToFive << euclid_gcd(5,x) }
    gcdArrayUpToFive
  end

  def remainder_steps_up_to_5
    gcdStepArrayUpToFive=[]
    (1..5).map do |x| 
    	euclid_gcd(5, x)
      gcdStepArrayUpToFive << gcd_remainder_steps
    end
	gcdStepArrayUpToFive
  end

def fiveLoopExtraction

end
end
