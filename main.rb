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

test.buckets.each_with_index do |bucket, index|
  puts "#{index}: #{bucket}"
end

puts "Load Levels: #{test.length}"
puts "Capacity: #{test.capacity}"

print "\nPress [Enter]\n"
gets

test.set("moon", "silver")

test.buckets.each_with_index do |bucket, index|
  puts "#{index}: #{bucket}"
end

puts "Load Levels: #{test.length}"
puts "Capacity: #{test.capacity}"

# test.set("dog", "grey")
# test.set("kite", "cyan")
# test.set("hat", "red")

# test.buckets.each do |bucket|
#   puts bucket
# end

# puts "Load Levels: #{test.length}"
# puts "Capacity: #{test.capacity}"
