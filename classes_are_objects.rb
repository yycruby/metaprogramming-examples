class Object; end


p Object.object_id
#=> 13919400
p Object.new.object_id
#=> 13919160

p Object.class
#=> Class
p Object.new.class
#=> Object

Object.instance_eval do
  def class_method
    "instance_eval produces a class method"
  end
end

p Object.class_method
#=> "instance_eval produces a class method"

Object.class_eval do
  def instance_method
    "class_eval produces an instance method"
  end
end

obj = Object.new
p obj.instance_method
#=> "class_eval produces an instance method"

AnotherClass = Class.new
AnotherClass.class_eval do
  def method
    "I'm totally dynamic"
  end
end

p AnotherClass.new.method
#=> "I'm totally dynamic"
