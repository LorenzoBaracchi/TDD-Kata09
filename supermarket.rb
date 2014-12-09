require_relative "goods"
require_relative "discounts"


class CheckOut

  attr_accessor :total

  def initialize(pricing_rules)
    @total = 0
    @items = []
  end

  def scan(item)
  @total += Goods.priceFor(item)
  @items << item
  end

  def total
    @total - Discounts.discount(@items)
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
