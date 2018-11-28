require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')

class CustomerTest < MiniTest::Test

  def test_customer__name
    customer = Customer.new("Charlie")
    assert_equal("Charlie", customer.name)
  end

end
