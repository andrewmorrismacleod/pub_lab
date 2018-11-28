require('minitest/autorun')
require('minitest/rg')

require_relative('../customer')
require_relative('../drink')
require_relative('../food')

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 2, 4)

    @customer1 = Customer.new("Charlie", 15, 30)
    @customer2 = Customer.new("Sam", 15, 17)
    @customer3 = Customer.new("Alice", 10, 21, 160)

    @food1 = Food.new("pie", 2, 10)
    @food2 = Food.new("chips", 0.50, 5)
  end

  def test_customer__name
    assert_equal("Charlie", @customer1.name)
  end

  def test_customer__wallet
    assert_equal(15.0, @customer1.wallet)
  end

  def test_buy_a_drink
    @customer1.buy_drink(@drink1)
    assert_equal(13, @customer1.wallet)
  end

  def test_age
    assert_equal(30, @customer1.age)
  end

  def test_for_drunkenness__level
    assert_equal(0, @customer1.drunkenness)
  end

  def test_for_drunkenness__tipsy
    @customer1.buy_drink(@drink1)
    assert_equal(4, @customer1.drunkenness)
  end

 def test_buy_food
   @customer3.buy_food(@food1)
   assert_equal(150, @customer3.drunkenness)
 end


end
