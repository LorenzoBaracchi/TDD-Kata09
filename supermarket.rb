require_relative "goods"
require_relative "discounts"

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
    computeTotal - computeDiscount
  end

  private
  def computeTotal
    total = 0
    @items.each do |item|
      total += @goodsRules.priceFor(item)
    end
    total
  end

  def computeDiscount
    @discountsRules.discount(@items)
  end

end


def price(goods)
  co = CheckOut.new(create_rules)
  goods.split(//).each { |item| co.scan(item) }
  co.total
end

def create_rules
  goods = Goods.new
  goods.rule('A', 50)
  goods.rule('B', 30)
  goods.rule('C', 20)
  goods.rule('D', 15)

  discounts = Discounts.new
  discounts.rule('A', 20, 3)
  discounts.rule('B', 15, 2)

  {:goods=> goods, :discounts => discounts}
end
