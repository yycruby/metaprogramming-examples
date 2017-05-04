obj1 = Object.new
obj2 = Object.new

def obj1.my_method
  puts "This method is only defined on obj1"
end

def obj2.my_method
  puts "This method is only defined on obj2"
end

puts obj1.my_method
puts obj2.my_method
