require './lib/peep'

describe Peep do
  let(:peep) { described_class.new }
  describe '#add' do
    it 'returns its text' do
      peep = Peep.add(text: "hello there")
      expect(peep.text).to eq "hello there"
    end
  end

end