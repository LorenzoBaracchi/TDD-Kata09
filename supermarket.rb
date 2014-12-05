def goodPrice(good)
  match = Hash.new
  match['A'] = 50
  match['B'] = 30
  match['C'] = 20
  match['D'] = 15
  match[good]
end

def discountFor(goods, discountedGood)
  discountPrice = Hash.new
  discountPrice['A'] = 20
  discountPrice['B'] = 15

  discountQuantity = Hash.new
  discountQuantity['A'] = 3
  discountQuantity['B'] = 2

  discountPrice[discountedGood] * (goods.count(discountedGood)/discountQuantity[discountedGood]).to_i
end

def discount(goods)
  discountFor(goods, 'A') + discountFor(goods, 'B')
end

def price(goods)
  total = 0
  goods.each_char do |good|
    total += goodPrice(good)
  end
  total - discount(goods)
end
