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

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"],
]

robot_parts_copy = robot_parts.deep_dup

puts robot_parts.object_id
puts robot_parts_copy.object_id
