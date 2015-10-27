class PrimesTable
  def self.get_primes(number_of_primes)
    result = []

    candidate_number = 2
    while result.size < number_of_primes
      result << candidate_number if is_prime?(candidate_number)
      candidate_number += 1
    end

    result
  end

  def self.is_prime?(number)
    2.upto(Math.sqrt(number)) do |factor|
      return false if number % factor == 0
    end

    true
  end

  private_class_method :is_prime?

  attr_reader :primes

  def initialize(number_of_primes = 10)
    unless number_of_primes.is_a?(Integer) && number_of_primes > 0
      raise ArgumentError
    end

    @primes = self.class.get_primes(number_of_primes)
    @col_width = (self.primes.last ** 2).to_s.size + 1
  end

  def to_s
    result_str = header + "\n"
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

  def header
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
