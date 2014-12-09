require_relative "goods"
require_relative "discounts"


class CheckOut

  attr_accessor :total

  def initialize(pricing_rules)
    @total = 0
  end
end

def totalPrice(goods)
  total = 0
  goods.each_char do |good|
    total += Goods.priceFor(good)
  end
  total
end

def price(goods)
  totalPrice(goods) - Discounts.discount(goods)
end
