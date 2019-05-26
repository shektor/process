class Shop

  PRICE_LIST = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15,
  }

  def checkout(items)
    total = 0
    a_count = 0
    items.chars.each do |item|
      a_count += 1 if item == 'A'
    end
    total += 130 if a_count % 3
    items.chars.each do |item|
      items if item == 'A'
    end
    items.chars.each do |item|
      total += PRICE_LIST[item]
    end
    total
  end
end
