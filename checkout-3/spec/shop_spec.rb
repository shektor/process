require 'shop'

describe Shop do
  describe '#checkout' do
    it 'returns total of basket with 1 item' do
      expect(subject.checkout('A')).to eq 50
      expect(subject.checkout('B')).to eq 30
      expect(subject.checkout('C')).to eq 20
      expect(subject.checkout('D')).to eq 15
    end
    it 'returns total of basket with multiple items' do
      expect(subject.checkout('AA')).to eq 100
      expect(subject.checkout('ABCD')).to eq 115
    end
    # shop.checkout('AAA') # => 130
    # shop.checkout('AAAAAA') # => 260
    it 'returns total of basket with multi-buy items' do
      expect(subject.checkout('AAA')).to eq 130
      # expect(subject.checkout('AAAAAA')).to eq 260
    end
  end
end
