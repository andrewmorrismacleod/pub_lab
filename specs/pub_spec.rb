require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')

class PubTest < MiniTest::Test

  def test_pub__name
    pub = Pub.new("The Oak", 1000)
    assert_equal("The Oak", pub.name)
  end

  def test_pub__till
    pub = Pub.new("The Oak", 1000)
    assert_equal(1000.0, pub.till)
  end

end
