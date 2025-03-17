# The biggest number
def who_is_bigger(a, b, c)
    return "nil detected" if [a, b, c].include?(nil)
  
    max_value = { a => "a", b => "b", c => "c" }
    "#{max_value.max[1]} is bigger"
  end
  
  # Manipulation de strings
  def reverse_upcase_noLTA(str)
    str.upcase.reverse.delete("LTA")
  end
  
  # Search for the number 42 in an array
  def array_42(arr)
    arr.include?(42)
  end
  
  # Transformation of an array
  def magic_array(arr)
    arr.flatten.uniq.map { |n| n * 2 }.reject { |n| n % 3 == 0 }.sort
  end
  