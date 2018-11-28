require('minitest/autorun')
require('minitest/rg')

require_relative('../drink')

class DrinkTest < MiniTest::Test

  def test_drink
    drink = Drink.new("beer")
    assert_equal("beer", drink.name)
  end




end
