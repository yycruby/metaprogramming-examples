def Object.my_method 
  "This is now available on all instances of class Object"
end

puts Object.my_method
obj = Object.new
puts obj.class.my_method
