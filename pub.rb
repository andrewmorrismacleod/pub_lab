
class Pub

  attr_reader :name, :till, :drinks, :stock

  def initialize(name, till, drinks)
    @name = name
    @till = till.to_f
    @drinks = drinks
    @stock = initialize_stock
  end

  def serve_customer(customer, drink)

    if is_customer_legal(customer) && !is_drunk(customer)
      @till += drink.price
      customer.buy_drink(drink)

    end

  end

  def is_customer_legal(customer)
    return customer.age >=18
  end

  def is_drunk(customer)
    return customer.drunkenness > 150
  end

  def initialize_stock
    stock_hash = Hash.new()

    for drink in drinks
      drink_hash =
        {
          drink: drink,
          stock: 1
        }

      stock_hash[drink.name] = drink_hash
    end
    return stock_hash
  end

  def remove_drink(drink)
    @stock[drink.name][:stock] -= 1
  end

  def is_drink_available(drink)
    return @stock[drink.name][:stock] > 0
  end

  def total_stock
    total_stock = 0
    @stock.each_value { |drink_hash|  total_stock += drink_hash[:stock]}
    return total_stock
  end








end
