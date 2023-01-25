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

p range(1, 5) #=> [1,2,3,4]
p recur_range(1, 2) #=> [1]
p recur_range(1, 3) #=> [1, 2]
p recur_range(1, 5) #=> [1,2,3,4]
