class Goods

  def initialize()
    @goods = Hash.new
  end

  def rule(good, price)
    @goods[good] = price
  end

  def priceFor(good)
    @goods[good]
  end

end
