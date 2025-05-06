require_relative "lib/hashmap"

test = HashMap.new
test.set("apple", "red")
test.set("banana", "yellow")
test.set("carrot", "orange")
test.set("dog", "brown")
test.set("elephant", "gray")
test.set("frog", "green")
test.set("grape", "purple")
test.set("hat", "black")
test.set("ice cream", "white")
test.set("jacket", "blue")
test.set("kite", "pink")
test.set("lion", "golden")

test.buckets.each do |bucket|
  puts bucket
end
puts "# of keys: #{test.length}"

print "\nPress [Enter]\n"
gets

test.set("hat", "blue")
test.set("lion", "silver")
p test.get("hat")
p test.get("lion")
p test.get("frozen yogurt")

# p test.has?("frog")
# p test.has?("frozen yogurt")

# p test.remove("frog")
# p test.remove("hat")
# p test.remove("frozen yogurt")

# puts
# test.buckets.each do |bucket|
#   puts bucket.nil? ? "nil" : bucket
# end
# puts "# of keys: #{test.length}"
