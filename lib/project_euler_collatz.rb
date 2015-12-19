
def even_next(n)
  return n/2
end

def odd_next(n)
  return 3*n + 1
end

def next_value(n)
  return even_next(n) if n%2 == 0
  return odd_next(n) if n%2 == 1
end

# Collatz works with positive integers
# Sends back an array of with a collatz sequence. Sequence keeps updating going until you get back 1 as the number.
# Odd numbers become (3*n) + 1
# Even numbers become n/2
def collatz(n)
  sequence = [n]
  until n == 1
    n = next_value(n)
    sequence.push(n)
  end
  return sequence
end

# Brute forced method of checking longest collatz sequence
# Checks every single sequence length and updates the highest sequence length and number to send back if loop finds a higher sequence length
def longest_collatz
  current_length = 0
  highest_length = 0

  for n in 1...1000000
    current_length = collatz(n).length
    if current_length > highest_length
      highest_length = current_length
      number = n
    end
  end

  return number
end
