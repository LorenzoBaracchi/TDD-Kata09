require_relative "goods"
require_relative "discounts"

RULES = {:goods=> Goods, :discounts => Discounts}

class CheckOut

  def initialize(pricing_rules)
    @total = 0
    @items = []
    @goodsRules = pricing_rules[:goods]
    @discountsRules = pricing_rules[:discounts]
  end

  def scan(item)
  @total += @goodsRules.priceFor(item)
  @items << item
  end

  def total
    @total - @discountsRules.discount(@items)
  end
end

def price(goods)
  co = CheckOut.new(RULES)
  goods.split(//).each { |item| co.scan(item) }
  co.total
end
