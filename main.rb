require_relative "lib/hashmap"

# This is for testing and debugging purposes, thus there is a lot of iteration

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

test.entries.each_with_index do |entry, index|
  puts "#{index}: Key: #{entry[0]}, Value: #{entry[1]}"
end

puts "We are about to update some values. This should NOT trigger the load factor."
print "\nPress [Enter]\n"
gets

test.set("dog", "grey")
test.set("kite", "cyan")
test.set("hat", "red")

test.entries.each_with_index do |entry, index|
  puts "#{index}: Key: #{entry[0]}, Value: #{entry[1]}"
end

puts "Adding one new value. This should trigger #resize."
print "\nPress [Enter]\n"
gets

test.set("moon", "silver")

test.entries.each_with_index do |entry, index|
  puts "#{index}: Key: #{entry[0]}, Value: #{entry[1]}"
end

puts "Updating values again, to be sure resizing didn't break anything."
print "\nPress [Enter]\n"
gets

test.set("ice cream", "green")
test.set("apple", "marble")
test.set("lion", "albino")

test.entries.each_with_index do |entry, index|
  puts "#{index}: Key: #{entry[0]}, Value: #{entry[1]}"
end

puts "Now let's make sure the other methods still work, too."
print "\nPress [Enter]\n"
gets

p "Ice cream: #{test.get('ice cream')}"
p "Frozen yogurt: #{test.get('frozen yogurt')}"
p test.has?("dog")
p test.has?("cat")
p test.remove("kite")
p test.remove("boat")
p test.length
p test.keys
p test.values
p test.entries
