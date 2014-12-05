def goodPrice(good)
  match = Hash.new
  match['A'] = 50
  match['B'] = 30
  match['C'] = 20
  match['D'] = 15
  match[good]
end

def price(goods)
  total = 0
  goods.each_char do |good|
    total += goodPrice(good)
  end
  return total
end
