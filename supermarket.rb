def goodPrice(good)
  match = Hash.new
  match['A'] = 50
  match['B'] = 30
  match['C'] = 20
  match['D'] = 15
  match[good]
end

def discountA(goods)
  20 * (goods.count('A')/3).to_i
end

def discountB(goods)
  15 * (goods.count('B')/2).to_i
end

def discount(goods)
  discountA(goods) + discountB(goods)
end

def price(goods)
  total = 0
  goods.each_char do |good|
    total += goodPrice(good)
  end
  total - discount(goods)
end
