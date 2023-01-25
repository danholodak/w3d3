def range(min, max)
  arr = []
  (min...max).each do |i|
    arr << i
  end
  arr
end

def recur_range(min, max)
  return [] if max <= min
  recur_range(min, max - 1) << max - 1

  #recur_range(1, 2 - 1) << 2 - 1
  #recur_range(1, 1) == []

  #recur_range(1, 3 - 1) << 3 - 1
  #recur_range(1, 2) <<  2 - 1
  #recur_range(1, 1) == []
end

# p range(1, 5) #=> [1,2,3,4]
# p recur_range(1, 2) #=> [1]
# p recur_range(1, 3) #=> [1, 2]
# p recur_range(1, 5) #=> [1,2,3,4]

def exp(b, n)
  return 1 if n == 0
  b * exp(b, n - 1)
end

# exponent 1

# p exp(2, 2) # 4
# p exp(2, 1) # 2
# p exp(10, 4)
# p exp(5, 3)

# exponent 2
# p exp(b, 0) #= 1
# p exp(b, 1) #= b
# p exp(b, n) #= exp(b, n / 2) ** 2             [for even n]
# p exp(b, n) #= b * (exp(b, (n - 1) / 2) ** 2) [for odd n]

def exp_2(b, n)
  return 1 if n == 0
  if n.even?
    prev = exp_2(b, n / 2)
    prev * prev
  else
    prev = exp_2(b, (n - 1) / 2)
    b * prev * prev
  end
end

# p exp_2(2, 2) # 4
# p exp_2(2, 1) # 2
# p exp_2(10, 4)
# p exp_2(5, 3)

class Array
  def deep_dup
    return self.dup if self.is_a?(Array) && self.none? { |sub| sub.is_a?(Array) }
    dup_arr = []
    self.each do |sub|
      if sub.is_a?(Array)
        dup_arr << sub.deep_dup
      else
        dup_arr << sub
      end
    end

    dup_arr
  end
end

# robot_parts = [
#   ["nuts", "bolts", "washers"],
#   ["capacitors", "resistors", "inductors"],
# ]

# robot_parts_copy = robot_parts.deep_dup

# puts robot_parts.object_id
# puts robot_parts_copy.object_id
def fib_iterative(n)
  array = [0, 1]
  return array.take(n) if n <= 2
  (0...n - 2).each do |i|
    array << array[i] + array[i + 1]
  end
  array
end

# p fib_iterative(0)
# p fib_iterative(1)
# p fib_iterative(2)
# p fib_iterative(4)
# p fib_iterative(6)
# p fib_iterative(10)

def fib(n)
  return [0, 1].take(n) if n <= 2
  prev = fib(n - 1)
  prev << prev[-1] + prev[-2]
end

#  p fib(3)
# p fib(4)
# p fib(6)

def bsearch(arr, target)
    return nil if arr.length==0
  mid_idx = arr.length / 2
  mid = arr[mid_idx]
  return mid_idx if mid == target
  #return nil if !arr.include? target
  if mid > target
    bsearch(arr[0...mid_idx], target)
  else
    right = bsearch(arr[mid_idx + 1..-1], target)
    return nil if right == nil
    right + mid_idx + 1
  end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(array)
    return array if array.length <=1
    mid_idx = array.length/2
    merge(merge_sort(array[0..mid_idx]),  merge_sort(array[mid_idx+1 ..-1]))

end
def merge(array_1, array_2)
    
    merged = []
    if array1[0]

end

test_arr = [7,14,3,90]
