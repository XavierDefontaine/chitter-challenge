require './lib/peep'

describe Peep do
  let(:peep) { described_class.new }

  describe '#add' do
    it 'returns its text' do
      peep = Peep.add(text: "hello there")
      expect(peep.text).to eq "hello there"
    end
  end

  describe '#all' do
    it 'returns all peeps' do
      peep1 = Peep.add(text: "I am first!")
      peep2 = Peep.add(text: "I am second!")
      peeps = Peep.all
      expect(peeps.length).to eq 2
      expect(peeps.first.text).to eq "I am first!"
    end
  end

end