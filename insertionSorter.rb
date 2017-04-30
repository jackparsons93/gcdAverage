require 'minitest/autorun'

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

def reverse_insertion_sort(a)
 for j in 1..(a.length - 1)
    key=a[j]
    # Insert Array[j] into the sorted sequence A[1..j-1]
    i=j-1
    while i >= 0 and a[i] < key
      a[i+1]=a[i]
      i=i-1
    end
    a[i+1]=key
  end
  return a
end


class InsertionSortTest < Minitest::Test 
  def test_insertion_sort_will_sort
    puts "this is insertion_sort test"
    arrayTopass=[1,3,2,4,2,4]
    assert insertion_sort(arrayTopass)==[1,2,2,3,4,4]
    assert insertion_sort([3,2,1])==[1,2,3]   
  end

  def test_reverse_insertion_sort_will_reverse_sort
    assert reverse_insertion_sort([1,3,2,4]) == [4,3,2,1]
    assert reverse_insertion_sort([4,2,3])== [4,3,2]
  end
end


