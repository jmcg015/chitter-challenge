describe Chit do
  describe '.create' do
    it 'creates a new chit' do
      chit = Chit.create(content: "Hello there")
      chits = Chit.all
      expect(chits.first.length).to eq 1
      expect(chits.first.content).to eq "Hello there"
    end
  end
end