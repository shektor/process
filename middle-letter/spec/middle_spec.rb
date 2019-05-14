require 'middle'

describe Middle do
  describe '#get_middle' do
    context 'odd characters' do
      it 'returns middle character' do
        input = 'testing'
        expect(subject.get_middle(input)).to eq 't'
      end
    end
    context 'even characters' do
      it 'returns middle 2 characters' do
        input = 'testings'
        expect(subject.get_middle(input)).to eq 'ti'
      end
    end
  end

end
