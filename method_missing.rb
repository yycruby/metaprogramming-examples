class MyClass
  def method_missing(name, *args)
    if name == :my_method
      return "You tried to call my method!"
    end

    super
  end
end

obj = MyClass.new
p obj.my_method #=> "You tried to call my method!"
p obj.nonexistent #=> undefined method `nonexistent'
