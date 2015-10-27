require 'primes_table'

describe 'PrimesTable' do
  describe '::get_primes' do
    describe 'when n = 0' do
      it 'should return an empty array' do
        expect(PrimesTable.get_primes(0)).to eq([])
      end
    end

    describe 'when n = 10' do
      it 'should return the first 10 primes' do
        expected_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        expect(PrimesTable.get_primes(10)).to eq(expected_primes)
      end
    end

    describe 'when n = 13' do
      it 'should return the first 13 primes' do
        expected_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41]
        expect(PrimesTable.get_primes(13)).to eq(expected_primes)
      end
    end
  end

  describe '#initialize' do
    it 'throws an exception when n is a string' do
      expect{ PrimesTable.new('hello') }.to raise_error
    end

    it 'throws an exception when n is less than 1' do
      expect{ PrimesTable.new(0) }.to raise_error
    end

    it 'does not throw an exception when n is not given' do
      expect{ PrimesTable.new }.not_to raise_error
    end

    it 'does not throw an exception when n is greater than 1' do
      expect{ PrimesTable.new(10) }.not_to raise_error
    end
  end

  describe '#primes' do
    describe 'when n is not given' do
      it 'should return the first 10 primes' do
        expected_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        primes_table = PrimesTable.new

        expect(primes_table.primes).to eq(expected_primes)
      end
    end

    describe 'when n = 13' do
      it 'should return the first 13 primes' do
        expected_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41]
        primes_table = PrimesTable.new(13)

        expect(primes_table.primes).to eq(expected_primes)
      end
    end
  end

  describe '#to_s' do
    describe 'when n is not given' do
      it 'returns the multiplication table for the first 10 primes as a string' do
        expected_output = [
          "       2   3   5   7  11  13  17  19  23  29",
          "   2   4   6  10  14  22  26  34  38  46  58",
          "   3   6   9  15  21  33  39  51  57  69  87",
          "   5  10  15  25  35  55  65  85  95 115 145",
          "   7  14  21  35  49  77  91 119 133 161 203",
          "  11  22  33  55  77 121 143 187 209 253 319",
          "  13  26  39  65  91 143 169 221 247 299 377",
          "  17  34  51  85 119 187 221 289 323 391 493",
          "  19  38  57  95 133 209 247 323 361 437 551",
          "  23  46  69 115 161 253 299 391 437 529 667",
          "  29  58  87 145 203 319 377 493 551 667 841"
        ].join("\n") + "\n"

        expect(PrimesTable.new.to_s).to eq(expected_output)
      end
    end

    describe 'when n = 13' do
      it 'returns the multiplication table for the first 13 primes as a string' do
        expected_output = [
          "         2    3    5    7   11   13   17   19   23   29   31   37   41",
          "    2    4    6   10   14   22   26   34   38   46   58   62   74   82",
          "    3    6    9   15   21   33   39   51   57   69   87   93  111  123",
          "    5   10   15   25   35   55   65   85   95  115  145  155  185  205",
          "    7   14   21   35   49   77   91  119  133  161  203  217  259  287",
          "   11   22   33   55   77  121  143  187  209  253  319  341  407  451",
          "   13   26   39   65   91  143  169  221  247  299  377  403  481  533",
          "   17   34   51   85  119  187  221  289  323  391  493  527  629  697",
          "   19   38   57   95  133  209  247  323  361  437  551  589  703  779",
          "   23   46   69  115  161  253  299  391  437  529  667  713  851  943",
          "   29   58   87  145  203  319  377  493  551  667  841  899 1073 1189",
          "   31   62   93  155  217  341  403  527  589  713  899  961 1147 1271",
          "   37   74  111  185  259  407  481  629  703  851 1073 1147 1369 1517",
          "   41   82  123  205  287  451  533  697  779  943 1189 1271 1517 1681"
        ].join("\n") + "\n"

        expect(PrimesTable.new(13).to_s).to eq(expected_output)
      end
    end
  end
end
