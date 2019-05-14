require 'shop'

describe Shop do
  describe '#checkout' do
    it 'returns 50 if checkout with A' do
      expect(subject.checkout('A')).to eq 50
    end
    # shop.checkout('AA') # => 100
    it 'returns 100 if checkout with AA' do
      expect(subject.checkout('AA')).to eq 100
    end
    # shop.checkout('ABCD') # => 115
    it 'returns 115 if checkout with ABCD' do
      expect(subject.checkout('ABCD')).to eq 115
    end
  end

  describe '#price_items' do
    it 'updates total to 115 based on items passed ABCD' do
      subject.price_items('ABCD')
      expect(subject.total).to eq 115
    end
  end
end
