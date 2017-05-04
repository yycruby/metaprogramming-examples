class Windows98
  def useful_things
    "I'm great!"
  end

  def clippy
    "Hey looks like you're doing metaprogramming, do you need help with that?  Do you?  Do you?  Huh?"
  end
end


class WindowsXP < Windows98
  undef_method :clippy
end


os = Windows98.new
p os.useful_things #=> "I'm great!"
p os.clippy #=> "Hey looks like you're doing metaprogramming, do you need help with that?  Do you?  Do you?  Huh?"
os = WindowsXP.new
p os.useful_things #=> "I'm great!"
p os.clippy #=> undefined method `clippy'
