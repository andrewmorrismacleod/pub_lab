require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2)
  end

  def test_customer__name
    customer = Customer.new("Charlie", 15)
    assert_equal("Charlie", customer.name)
  end

  def test_customer__wallet
    customer = Customer.new("Charlie", 15)
    assert_equal(15.0, customer.wallet)
  end

  def test_buy_a_drink
    customer = Customer.new("Charlie", 15)
    customer.buy_drink(@drink1)
    assert_equal(13, customer.wallet)
  end

end
