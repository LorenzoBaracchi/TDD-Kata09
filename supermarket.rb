require_relative "goods"
require_relative "discounts"

RULES = {:goods=> Goods, :discounts => Discounts}

class CheckOut

  def initialize(pricing_rules)
    @items = []
    @goodsRules = pricing_rules[:goods]
    @discountsRules = pricing_rules[:discounts]
  end

  def scan(item)
    @items << item
  end

  def total
    computeTotal - @discountsRules.discount(@items)
  end

  private
  def computeTotal
    total = 0
    @items.each do |item|
      total += @goodsRules.priceFor(item)
    end
    total
  end
end

def price(goods)
  co = CheckOut.new(RULES)
  goods.split(//).each { |item| co.scan(item) }
  co.total
end
