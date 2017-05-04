class MyClass
  def a_real_method
    "100% alberta beef"
  end

  def method_missing(name, *args)
    if name == :ghost_method
      return "Spooky!"
    end

    super
  end
end

# obj = MyClass.new
# p obj.a_real_method
# #=> "100% alberta beef"
# p obj.ghost_method
# #=> "Spooky!"
# p obj.respond_to?(:a_real_method)
# #=> true
# p obj.respond_to?(:ghost_method)
# #=> false
# p obj.public_methods(false)
# #=> [:method_missing, :a_real_method]
# # p obj.method(:ghost_method) 
# #=> undefined method `ghost_method'

class MyClass
  def respond_to_missing?(name, *args)
    !!(name == :ghost_method || super(name, *args))
  end
end

obj = MyClass.new
p obj.a_real_method
#=> "100% alberta beef"
p obj.ghost_method
#=> "Spooky!"
p obj.public_methods(false)
#=> [:respond_to?, :method_missing, :a_real_method]
p obj.respond_to?(:a_real_method)
#=> true
p obj.respond_to?(:ghost_method)
#=> true
p obj.method(:ghost_method)
#=> #<Method: MyClass#ghost_method>
