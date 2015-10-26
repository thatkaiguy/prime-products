class PrimesTable
  FIRST_TEN_PRIMES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

  def self.get_primes(number_of_primes, calculated_primes = FIRST_TEN_PRIMES)
    result = calculated_primes

    if number_of_primes <= result.size
      result = result.take(number_of_primes)
    else
      candidate_number = result.last + 1
      while result.size < number_of_primes
        result << candidate_number if is_prime?(candidate_number)
        candidate_number += 1
      end
    end

    result
  end

  def self.is_prime?(number)
    2.upto(Math.sqrt(number)) do |factor|
      return false if number % factor == 0
    end

    true
  end

  attr_reader :primes

  def initialize(number_of_primes = 10)
    unless number_of_primes.is_a?(Integer) && number_of_primes > 0
      raise ArgumentError
    end

    @primes = self.class.get_primes(number_of_primes)
    @col_width = (self.primes.last ** 2).to_s.size + 1
  end

  def to_s
    result_str = top_row + "\n"
    self.primes.each do |row_prime|
      result_str << format_column(row_prime)
      self.primes.each do |col_prime|
        result_str << format_column(row_prime * col_prime)
      end
      result_str << "\n"
    end

    result_str
  end

  private

  attr_accessor :col_width

  def top_row
    output = " " * col_width
    self.primes.each do |prime|
      output << format_column(prime)
    end

    output
  end

  def format_column(content)
    content.to_s.rjust(col_width)
  end
end

foo = PrimesTable.new(9)
puts foo
