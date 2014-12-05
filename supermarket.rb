def goodPrice(good)
  match = Hash.new
  match['A'] = 50
  match['B'] = 30
  match['C'] = 20
  match['D'] = 15
  match[good]
end

def discount(goods)
  if goods.count('A') >= 3
    then return 20
  end
  return 0
end

def price(goods)
  total = 0
  goods.each_char do |good|
    total += goodPrice(good)
  end
  return total - discount(goods)
end
