require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def test_customer__name
    customer = Customer.new("Charlie", 15)
    assert_equal("Charlie", customer.name)
  end

  def test_customer__wallet
    customer = Customer.new("Charlie", 15)
    assert_equal(15.0, customer.wallet)
  end

end
