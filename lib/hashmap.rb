require_relative "node"
require_relative "linked_list"

# HashMap data structure for matching key/value pairs
class HashMap
  attr_reader :buckets

  def initialize
    @load_factor = 0.8
    @capacity = 16
    @buckets = Array.new(capacity)
  end

  def set(key, value)
    index = key_to_index(key)
    bucket = buckets[index]

    if bucket.nil?
      list = LinkedList.new
      list.append(key, value)
      buckets[index] = list
    elsif bucket.contains?(key)
      bucket.at(bucket.find(key)).value = value
    else
      # Bucket wasn't empty or key already-existing; collision case
      bucket.append(key, value)
    end
  end

  def get(key)
    index = key_to_index(key)
    bucket = buckets[index]

    bucket.contains?(key) ? bucket.at(bucket.find(key)).value : nil
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
