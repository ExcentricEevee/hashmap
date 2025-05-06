require_relative "node"
require_relative "linked_list"

# HashMap data structure for matching key/value pairs
class HashMap
  attr_reader :buckets

  def initialize
    @load_factor = 0.8
    @capacity = 16
    @buckets = Array.new(capacity) { LinkedList.new }
  end

  def set(key, value)
    bucket = buckets[key_to_index(key)]

    if bucket.contains?(key)
      bucket.at(bucket.find(key)).value = value
    else
      bucket.append(key, value)
    end
  end

  def get(key)
    bucket = buckets[key_to_index(key)]
    bucket.contains?(key) ? bucket.at(bucket.find(key)).value : nil
  end

  def has?(key)
    bucket = buckets[key_to_index(key)]
    bucket.contains?(key)
  end

  def remove(key)
    bucket = buckets[key_to_index(key)]
    bucket.remove_at(bucket.find(key))
  end

  def length
    buckets.reduce(0) { |total, bucket| total + bucket.size }
  end

  def clear
    initialize
  end

  def keys
    buckets.each_with_object([]) do |bucket, keys|
      temp = bucket.head
      until temp.nil?
        keys.push(temp.key)
        temp = temp.next_node
      end
    end
  end

  private

  attr_reader :load_factor
  attr_accessor :capacity

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = (prime_number * hash_code) + char.ord }

    hash_code
  end

  def key_to_index(key)
    index = hash(key) % capacity
    # Prevent Ruby from dynamically resizing the buckets array
    raise IndexError if index.negative? || index >= @buckets.length

    index
  end
end
