class Discount

  attr_accessor :amount
  attr_accessor :quantity

  def initialize(amount, quantity)
    @amount = amount
    @quantity = quantity
  end

  def computeDiscount(numberOfItems)
    @amount * applicableDiscount(numberOfItems)
  end

  def applicableDiscount(numberOfItems)
    (numberOfItems/@quantity).to_i
  end
end

class Discounts

  def initialize()
    @rules = Hash.new
  end

  def rule(good, amount, quantity)
    @rules[good] = Discount.new(amount, quantity)
  end

  def discount(goodsList)
    total = 0
    @rules.each do |key, discount|
      total += discount.computeDiscount(goodsList.count(key))
    end
    total
  end

end
