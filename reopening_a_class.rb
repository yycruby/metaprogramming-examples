class BaseClass
  def base_method
    "pump up the bass!"
  end
end

class MyClass < BaseClass
  def my_method
    "you called my method!"
  end
end

class MyClass
  def another_method
    "you called a different method"
  end
end

obj = MyClass.new
p obj.my_method
#=> "you called my method!"
p obj.base_method
#=> "pump up the bass!"
p obj.another_method
#=> "you called a different method"

