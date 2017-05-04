class MyClass; end

MyClass.class_eval do
  def new_method
    "brand spankin' new"
  end

  def self.new_class_method
    "class meth head"
  end
end

obj = MyClass.new

p obj.new_method
#=> "brand spankin' new"
p MyClass.new_class_method
#=> "class meth head"
