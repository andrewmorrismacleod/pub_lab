require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2)
    @drink2 = Drink.new("gin", 3)
    @drink3 = Drink.new("wine", 4)
    @drinks = [@drink1, @drink2, @drink3]
    @pub = Pub.new("The Oak", 1000, @drinks)
    @customer1 = Customer.new("Charlie", 3)
    @customer2 = Customer.new("Sam", 10)
  end


  def test_pub__name
    assert_equal("The Oak", @pub.name)
  end

  def test_pub__till
    assert_equal(1000.0, @pub.till)
  end

  def test_pub__drinks
    assert_equal("gin", @pub.drinks[1].name)
  end

  def test_pub_serve_customer
    @pub.serve_customer(@customer1,@drink2)
    assert_equal(1003, @pub.till)
  end

end
