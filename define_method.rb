class Box
  SIZES = %w(small medium large).freeze

  SIZES.each do |size|
    define_method "#{size}_price=" do |price|
      instance_variable_set("@#{size}_price",
                            price)
    end

    define_method("#{size}_price") do
      instance_variable_get("@#{size}_price")
    end
  end
end

obj = Box.new
obj.small_price = 5
p obj.small_price #=> 5
p obj.large_price #=> nil
