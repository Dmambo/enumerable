require_relative 'my_list'

list = MyList.new([1, 2, 3, 4, 5])

# Test #each method
list.each { |item| puts item }

# Test MyEnumerable methods
puts list.all? { |item| item > 0 }   # true
puts list.all? { |item| item > 3 }   # false
puts list.any? { |item| item > 3 }   # true
puts list.any? { |item| item > 5 }   # false
puts list.filter { |item| item.even? }  # [2, 4]
