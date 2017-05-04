class MyClass
  def singleton
    class << self
      self
    end
  end
end

p MyClass.new.singleton # => #<Class:#<MyClass:0x00000001815e60>>
p MyClass.new
