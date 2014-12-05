require_relative "goods"
require_relative "discounts"

def price(goods)
  total = 0
  goods.each_char do |good|
    total += Goods.priceFor(good)
  end
  total - Discounts.discount(goods)
end
