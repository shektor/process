class Shop

  PRICELIST = {
    'A' => 50,
    'B' => 30,
    'C' => 20,
    'D' => 15
  }

  attr_accessor :total

  def initialize()
    @total = 0
  end

  def checkout(items)
    @total = 0
    price_items(items)
    @total
  end

  def price_items(items)
    items.chars.each do |item|
      @total += PRICELIST[item]
    end
  end
end
