require 'shop'

describe Shop do
  describe '#checkout' do
    # shop.checkout('aBc') # => -1
    it 'returns -1 if arguements contains non-cap characters' do
      basket = 'aBc'
      expect(subject.checkout(basket)).to eq -1
    end
    # shop.checkout('-B8x')
    it 'returns -1 if arguements contains non-aplha characters' do
      basket = '-B8x'
      expect(subject.checkout(basket)).to eq -1
    end
    # shop.checkout(18) # => -1
    it 'returns -1 if arguements is an integer' do
      basket = 18
      expect(subject.checkout(basket)).to eq -1
    end
    # shop.checkout('AA') # => 100
    it 'returns 100 if basket is AA' do
      basket = 'AA'
      expect(subject.checkout(basket)).to eq 100
    end
    # shop.checkout('ABCD') # => 115
    it 'returns 115 if basket is ABCD' do
      basket = 'ABCD'
      expect(subject.checkout(basket)).to eq 115
    end
  end
end
