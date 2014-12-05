require_relative "supermarket"
require "test/unit" 

class TestPrice < Test::Unit::TestCase


  def test_totals
    assert_equal(  0, price(""))
    
  end

end

