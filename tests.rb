require_relative "supermarket"
require "test/unit"

class TestPrice < Test::Unit::TestCase


  def test_totals
    assert_equal(  0, price(""))
    assert_equal( 50, price("A"))
    assert_equal( 80, price("AB"))
    assert_equal(115, price("CDBA"))

    assert_equal(100, price("AA"))
    
  end

end
