# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0) {|sum,i| sum + i}
  # YOUR CODE HERE
end

def max_2_sum arr
  return 0 if arr.length() == 0
  return arr[0] if arr.length() == 1
  new_arr = arr.sort{|a,b| b<=>a}
  return new_arr[0] + new_arr[1]
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s=~/\A[^aeiou\W\d_]/i
	  return true
  else
	  return false
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if /\A[01]+\z/.match(s) && s.to_i(2)%4 == 0
	return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
        if isbn.length >0 && price> 0
            @isbn = isbn
            @price = price
        else
            raise ArgumentError
        end
  end
    
  def isbn
        return @isbn
  end
    
  def price
        return @price
  end
    
  def isbn=(new_isbn)
       @isbn = new_isbn
  end
  def price=(new_price)
        @price = new_price
  end
    
  def price_as_string
        "$"+ '%.2f'% @price.round(2).to_s
  end
    
# YOUR CODE HERE
end
