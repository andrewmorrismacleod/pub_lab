class Customer

  attr_reader :name, :wallet, :age, :drunkenness

  def initialize(name, wallet, age, drunkenness = 0)
    @name = name
    @wallet = wallet.to_f
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(drink)
    @wallet -= drink.price
    @drunkenness += drink.alcohol_level
  end

end
