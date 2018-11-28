require('minitest/autorun')
require('minitest/rg')

require_relative('../food')

class FoodTest < MiniTest::Test

  def test_food
    food = Food.new("pie", 2, 10)
    assert_equal("pie", food.name)
    assert_equal(2, food.price)
    assert_equal(10, food.rej_level)
  end



end
