class MyClass
  MY_CONSTANT = 'speed of light'

  def self.class_method
    "a class method"
  end

  def instance_method
    "an instance method"
  end
end

p MyClass.const_get('MY_CONSTANT') #=> "speed of light"
klass = Module.const_get('MyClass') #=> MyClass
p klass.class_method #=> "a class method"
p klass.new.instance_method #=> "an instance method"
