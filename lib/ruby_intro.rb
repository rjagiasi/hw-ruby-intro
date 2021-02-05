# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for ele in arr do
    sum += ele
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end
  
  arr = arr.sort
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      # puts "#{i} , #{j}"
      if arr[i].to_i+arr[j].to_i == n.to_i
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  ch = s[0,1].downcase
  # puts ch, s, ['a', 'e', 'i', 'o', 'u'].include?(ch)
  flag = ch.match(/[A-Za-z]/)
  if flag 
    return !['a', 'e', 'i', 'o', 'u'].include?(ch)
  end
  return false
  # done
end

def binary_multiple_of_4? s
  if s == ''
    return false
  end 
  if s.match(/[^0-1]/)
    return false
  end
  
  return (s.to_i(2) % 4) == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn == ''
      raise ArgumentError, 'ISBN is empty'
    end
    if price <= 0
      raise ArgumentError, 'Invalid Price'
    end
      @isbn = isbn
      @price = price
  end
  
  def price_as_string()
    return "$" + sprintf("%.2f", @price)
  end
end
