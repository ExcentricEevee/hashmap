require_relative "node"

# HashMap data structure for matching key/value pairs
class HashMap
  attr_reader :buckets

  def initialize
    @load_factor = 0.8
    @capacity = 16
    @buckets = Array.new(capacity)
  end

  def set(key, value)
    index = hash(key) % capacity
    # Prevent Ruby from dynamically resizing the buckets array
    raise IndexError if index.negative? || index >= @buckets.length

    if buckets[index].nil?
      buckets[index] = Node.new(key, value)
    elsif buckets[index].key == key
      buckets[index].value = value
    #else
      # Collision: deal with it by making a linked list
      #buckets[index].next_node = Node.new(key, value)
    end
  end

  private

  attr_reader :load_factor
  attr_accessor :capacity

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end
end
