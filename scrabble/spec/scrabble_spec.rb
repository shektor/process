require 'scrabble'

describe Scrabble do
  describe '#score' do
    it 'returns a score of 1 if passed a' do
      word = 'a'
      expect(subject.score(word)).to eq 1
    end
    it 'returns a score of 4 if passed f' do
      word = 'f'
      expect(subject.score(word)).to eq 4
    end
    it 'returns a score of 6 if passed street' do
      word = 'street'
      expect(subject.score(word)).to eq 6
    end
    it 'returns a score of 6 if passed street' do
      word = 'quirky'
      expect(subject.score(word)).to eq 22
    end
    it 'returns a score of 0 if passed nil' do
      word = nil
      expect(subject.score(word)).to eq 0
    end
    it 'returns a score of 0 if passed " \t\n"' do
      word = " \t\n"
      expect(subject.score(word)).to eq 0
    end
  end
end

# scrabble = Scrabble.new('a')
# scrabble.score # => 1

# scrabble = Scrabble.new('f')
# scrabble.score # => 4
#
# scrabble = Scrabble.new('street')
# scrabble.score # => 6

# scrabble = Scrabble.new(nil)
# scrabble.score # => 0
#
# scrabble = Scrabble.new(" \t\n")
# scrabble.score # => 0
