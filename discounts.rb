module Discounts

  class Discount

    attr_accessor :amount
    attr_accessor :quantity

    def initialize(amount, quantity)
      @amount = amount
      @quantity = quantity
    end
  end

  @@rules = Hash.new
  @@rules['A'] = Discount.new(20, 3)
  @@rules['B'] = Discount.new(15, 2)

  def self.discount(goodsList)
    total = 0
    @@rules.each do |key, pair|
      total += discountFor(goodsList, key, pair)
    end
    total
  end

  private
  def self.discountFor(goodsList, good, discount)
    discount.amount * numberOfDiscountedItems(goodsList, good, discount)
  end

  def self.numberOfDiscountedItems(goodsList, good, discount)
    (goodsList.count(good)/discount.quantity).to_i
  end

end
