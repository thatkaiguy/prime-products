### Description

This program will print out a multiplication table of the first n prime numbers.

### Time Complexity

- `::get_primes` - scales on the order of O(n * sqrt(n))
- `#to_s` - scales on the order of O(n^2)

n is the number of prime numbers.

### Usage

Please clone this repository, run `bundle` and use the following commands from the command line.
Tests may be run using `rspec`.

Example 1: Printing the multiplication table of the first 10 prime numbers.
`ruby prime_products.rb`

Expected output:

Example 2: Printing the multiplication table of the first N prime numbers. N = 13 in this case.
`ruby prime_products.rb 13`

Expected output:
