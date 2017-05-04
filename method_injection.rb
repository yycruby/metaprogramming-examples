class MyClass
  def instance_method
    "instance method"
  end

  def self.class_method
    "class method"
  end
end

def MyClass.new_class_method
  class_method
end

obj = MyClass.new
def obj.new_instance_method
  instance_method
end

p MyClass.new_class_method # => "class method"
p obj.new_instance_method # => "instance method"
