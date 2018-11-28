class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet.to_f
  end

  def buy_drink(drink)
    @wallet -=drink.price
  end

end
