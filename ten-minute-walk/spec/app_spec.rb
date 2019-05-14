require 'app'

describe App do
  describe '#tenminuteswalk' do
    it 'will return true with a correct set of directions that last for 10 mins' do
      directions = ['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']
      expect(subject.tenminuteswalk(directions)).to eq true
    end
    it 'will return false with a incorrect set of directions that last for 10 mins' do
      directions = ['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']
      expect(subject.tenminuteswalk(directions)).to eq false
    end
    it 'will return false with a incorrect set of directions that last for 10 mins' do
      directions = ['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']
      expect(subject.tenminuteswalk(directions)).to eq false
    end
    it 'will return false with a walk that is not 10 mins' do
      directions = ['n', 's']
      expect(subject.tenminuteswalk(directions)).to eq false
    end
  end

  # describe '#go_through_array'
end
