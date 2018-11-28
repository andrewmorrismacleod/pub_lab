
class Food

  attr_reader :name, :price, :rej_level

  def initialize(name, price, rej_level)
    @name = name
    @price = price
    @rej_level = rej_level
  end


end
