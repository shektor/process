class Shop

  PRICES = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  def checkout(basket)
    total = 0
    return -1 if basket.is_a? Integer
    basket.chars.each do |c|
      return -1 if !is_valid?(c)
      total += PRICES[c]
    end
    total
  end

  def is_valid?(c)
    /[[:upper:]]/.match(c)
  end
end
