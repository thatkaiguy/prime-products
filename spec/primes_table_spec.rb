require 'primes_table'

describe 'PrimesTable' do
  it 'throws an exception when initialized with a string' do
    expect{ PrimesTable.new('hello') }.to raise_error
  end

  it 'throws an exception when initialized with a number less than 1' do
    expect{ PrimesTable.new(0) }.to raise_error
  end

  it 'calculates the first ten prime numbers by default' do
    primes_table = PrimesTable.new
    expect(primes_table.primes).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
  end

  it 'calculates more than 10 primes' do
    primes_table = PrimesTable.new(13)
    expect(primes_table.primes).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41])
  end

  describe "printing" do
    it "has an overriden to_s method" do
      expect(PrimesTable.new(2).to_s).to eq("   2 3\n 2 4 6\n 3 6 9\n")
    end
  end
end
