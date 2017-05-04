class A
  def initialize
    @a = 3
    @@a = 4
    a = 5
  end

  @a = 1
  @@a = 2
end

# @a gets set when the class is first defined
p A.instance_variable_get("@a") #= > 1

# @@a gets set when the class is first defined
p A.class_variable_get("@@a") #= > 2

# Initialize changes the value of @a
p A.new.instance_variable_get("@a") #= > 3

# Initialize changes the value of @@a
p A.new.class.class_variable_get("@@a") #= > 4

# the return value
p A.new.send('initialize') #= > 5


# ----------------------------------------

class Class
  def a_method
    "where am I?"
  end
end

# a_method is added as a class method to all classes!
p Object.a_method
