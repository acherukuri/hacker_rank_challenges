
def find_sum(arr,sum)
 result = {}
 h = Hash[arr.map {|i| [i,i]}]
 arr.each { |l| result[l] = sum-l  if h[sum-l] && !result[sum-l]  }
 result.count
end

puts find_sum([1,3, 46, 1,3,9], 47)
puts find_sum([6,6,3,9,3,5,1], 12)
