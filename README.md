### Description

This program will print out a multiplication table of the first n prime numbers.

### Time Complexity

- `::get_primes` - scales on the order of O(n * sqrt(n)) where n is the largest prime number in the set
- `#to_s` - scales on the order of O(n^2) where n is the total number of prime numbers

### Usage

Please clone this repository, run `bundle` and use the following commands from the command line.
Tests may be run using `rspec`.

#### Example 1:

Printing the multiplication table of the first 10 prime numbers.

`ruby prime_products.rb`

Expected output:

![10](https://raw.github.com/thatkaiguy/prime-products/master/10.png)

#### Example 2:

Printing the multiplication table of the first N prime numbers. N = 13 in this case.

`ruby prime_products.rb 13`

Expected output:

![13](https://raw.github.com/thatkaiguy/prime-products/master/13.png)
