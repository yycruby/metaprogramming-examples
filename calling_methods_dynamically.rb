class MyClass
  def my_method
    "you're calling my method!"
  end
end

obj = MyClass.new
p obj.send("my_method")
p obj.send("asdf")
