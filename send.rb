class MyClass
  def public_method
    "a public method"
  end

  private

  def private_method
    "a private method"
  end
end

obj = MyClass.new
p obj.send('public_method') #=> "a public method"
p obj.method('public_method') #=> "a public method"
p obj.send('private_method') #=> "a private method"
p obj.method('private_method') #=> "a public method"
p obj.public_send('public_method') #=> "a public method"
p obj.public_send('private_method') #=> private method `private_method' called
