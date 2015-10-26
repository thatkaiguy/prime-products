require_relative 'lib/primes_table'

num_primes = ARGV[0] || 10
num_primes = num_primes.to_i

puts PrimesTable.new(num_primes)
