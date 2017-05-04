class MyClass
  def initialize
    @my_attr = 1
  end

  def get_variable name
    instance_variable_get("@#{name}")
  end

  def set_variable name, value
    instance_variable_set("@#{name}", value)
  end
end


obj = MyClass.new
p obj.get_variable "my_attr"  # => 1
p obj.set_variable "my_attr", 5
p obj.get_variable "my_attr" # => 5
p obj.get_variable "missing_var" # => nil
