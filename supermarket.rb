def goodPrice(good)
  case good
  when 'A'
    return 50
  when 'B'
    return 30
  when 'C'
    return 20
  when 'D'
    return 15
  else
    return 0
  end
end

def price(goods)
  total = 0
  goods.each_char do |good|
    total += goodPrice(good)
  end
  return total
end
