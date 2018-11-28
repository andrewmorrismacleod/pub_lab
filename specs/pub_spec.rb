require('minitest/autorun')
require('minitest/rg')

require_relative('../pub')

class PubTest < MiniTest::Test

  def test_pub__name
    pub = Pub.new("The Oak")
    assert_equal("The Oak", pub.name)

  end

end
