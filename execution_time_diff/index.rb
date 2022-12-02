def my_min(arr)
   smallest = 0

   (0...arr.length - 1).each do |i|
      (i + 1..arr.length - 1).each do |j|
         smallest = arr[i] if arr[i] < arr[j] && smallest > arr[i]
      end
   end
   smallest
end


def my_min_two(arr)
   smallest = arr.shift

   arr.each  {|ele| smallest = ele if ele < smallest}

   smallest
end

#  list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_two(list)


def largest_contiguous_subsum(arr)
   pairs = []

   (0...arr.length - 1).each do |i|
      (i + 1..arr.length - 1).each do |j|
         pairs << arr[i..j]
      end
   end

   max_subArray = pairs.first.sum 
   pairs.each do |subArr|
      max_subArray = subArr if subArr.sum > max_subArray
   end

   max_subArray
end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8


def largest_contiguous_subsum(arr)
   largest = arr.first
   curr = 0

   arr.each do |ele|
      curr += ele
      largest = curr if curr > largest 
      curr = 0 if curr < 0 
   end

   largest
end


list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
