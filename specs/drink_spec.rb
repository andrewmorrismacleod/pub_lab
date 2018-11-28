require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def test_pub__drink
    drink = Drink.new("beer", 2, 4)
    assert_equal("beer", drink.name)
  end

  def test_pub__price
    drink = Drink.new("beer", 2, 4)
    assert_equal(2.0, drink.price)
  end

    def test_level
      drink = Drink.new("beer", 2, 4)
      assert_equal(4, drink.alcohol_level)
    end 

end
