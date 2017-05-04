class MyClass; end

obj = MyClass.new

obj.instance_eval do
  def my_method
    "you're in my method"
  end
end

p obj.my_method
#=> "you're in my method"

