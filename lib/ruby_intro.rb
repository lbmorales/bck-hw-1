# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.reduce(0, :+)
  # could be .inject()
end

def max_2_sum(arr)
  return arr[0] if arr.size == 1
  arr.max(2).reduce(0, :+)
  # sum(arr.max(2)) # reusing method sum above
end

def sum_to_n?(arr, n)
  return false if arr.size == 1 || arr.empty?
  arr.each do |_elemet|
    first_value = arr.slice!(0)
    result_arr = arr.map { |value| value + first_value }
    return true if result_arr.include?(n)
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  return false if s.empty? || !s.match(/^[a-zA-Z]/) || s.match(/^[AaEeIiOoUu]/)
  true
end

def binary_multiple_of_4?(s)
  return false if s.empty?
  return true if s !~ /[^01]/ && (s.to_i(2) % 4).zero?
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    validate_attributes!
  end

  def price_as_string
    '$%.2f' % price
  end

  def validate_attributes!
    validate_isbn!
    validate_price!
  end

  def validate_isbn!
    raise ArgumentError, "ISBN can\'t be blank" if isbn.empty?
  end

  def validate_price!
    raise ArgumentError, "Price can\'t be less or equal cero" if price <= 0
  end
end
