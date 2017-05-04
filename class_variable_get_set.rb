class MyClass
  @@my_attr = 1

  def self.get_variable name
    class_variable_get("@@#{name}")
  end

  def self.set_variable name, value
    class_variable_set("@@#{name}", value)
  end
end


p MyClass.get_variable "my_attr" # => 1
p MyClass.set_variable "my_attr", 5
p MyClass.get_variable "my_attr" # => 5
p MyClass.get_variable "missing_var" # => uninitialized class variable @@missing_var in MyClass (NameError)
