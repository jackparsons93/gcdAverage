require 'minitest/autorun'

class SortMe
def insertion_sort(a)
  for j in 1..(a.length - 1)
    key=a[j]
    # Insert Array[j] into the sorted sequence A[1..j-1]
    i=j-1
    while i >= 0 and a[i] > key
      a[i+1]=a[i]
      i=i-1
    end
    a[i+1]=key
  end
  return a
end


def reverse_insertion_sort(array)

end
end

class InsertionSortTest < Minitest::Test 
  def test_insertion_sort_will_sort
    mySorter=SortMe.new
    arrayTopass=[1,3,2,4]
    #puts mySorter.insertion_sort(arrayTopass)
    assert mySorter.insertion_sort(arrayTopass)==[1, 2, 3, 4]
    #assert true==true
   
  end
#  def test_reverse_insertion_sort_will_reverse_sort
#    mySorter=SortMe.new
#    assert mySorter.reverse_insertion_sort([1,3,2,4]) == [4,3,2,1]
#  end
end





array = [1, 5, 3, 4, 6, 3]
arrayTopass=[1,3,2,4]
iCanSort=SortMe.new
puts iCanSort.insertion_sort(arrayTopass)
