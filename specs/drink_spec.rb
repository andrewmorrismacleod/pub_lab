require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def test_pub__drink
    drink = Drink.new("beer", 2)
    assert_equal("beer", drink.name)
  end

  def test_pub__price
    drink = Drink.new("beer", 2)
    assert_equal(2, drink.price)
  end

end
