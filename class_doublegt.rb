class MyClass; end

class << MyClass
  def my_method
    "you're in my method"
  end
end

p MyClass.my_method
#=> "you're in my method"

obj = MyClass.new

class << obj
  def test
    "test"
  end
end

p obj.test
#=> "test"
