module Discounts
  @@prices = Hash.new
  @@prices['A'] = 20
  @@prices['B'] = 15

  @@quantity = Hash.new
  @@quantity['A'] = 3
  @@quantity['B'] = 2

  def self.discount(goods)
    discountFor(goods, 'A') + discountFor(goods, 'B')
  end

  private
  def self.discountFor(goods, discountedGood)
    @@prices[discountedGood] * (goods.count(discountedGood)/@@quantity[discountedGood]).to_i
  end

end
