module Goods
  @@goods = Hash.new
  @@goods['A'] = 50
  @@goods['B'] = 30
  @@goods['C'] = 20
  @@goods['D'] = 15

  def self.priceFor(good)
    @@goods[good]
  end

end
