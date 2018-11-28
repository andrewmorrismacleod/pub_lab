
class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till.to_f
    @drinks = drinks
  end

  def serve_customer(customer, drink)

    if is_customer_legal(customer)
      @till += drink.price
      customer.buy_drink(drink)
    end

  end

def is_customer_legal(customer)

  return customer.age >=18

end


end
