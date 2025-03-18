# Calculator
# Add method
def add(a, b)
    a + b
end

# Subtract method
def subtract(a, b)
    a - b
end

# Sum method
def sum(array)
    array.reduce(0, :+)
end

# Multiply method
def multiply(a, b)
    a * b
end

# Power method
def power(a, b)
    a ** b
end

# Factorial method
def factorial(n)
    (1..n).inject(:*)
end

def factorial(n)
    return 1 if n == 0
    (1..n).inject(1, :*)
  end
  
  def multiply(a, b)
    a * b
  end
