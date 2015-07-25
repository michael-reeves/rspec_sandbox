shared_examples_for('a standard vehicle') do

  describe "attributes" do

    it "allows reading and writing for :make" do
      pending("debugging a problem")
      subject.make = 'Tes'
      expect(subject.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      subject.year = 9999
      expect(subject.year).to eq(9999)
    end

    it "allows reading and writing for :color" do
      subject.color = 'foo'
      expect(subject.color).to eq('foo')
    end

    it "allows reading for :wheels" do
      expect(subject.wheels).to eq(4)
    end

    it "allows writing for doors"   # omitting the do/end block makes this a
    # pending example

  end

end
