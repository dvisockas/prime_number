require "prime_number/version"

module PrimeNumber
  def self.get(n = 1)
		numbers = []
		i = 1

		while numbers.count < n do
			numbers.push(i) if self.prime?(i)
			i += 1
		end

		numbers
	end

	def self.prime?(number)
		(2...number).none? { |n| number % n == 0 }
	end

	def self.multiplied_table(n)
		primes = get(n)

		primes.each do |prime|
			primes.each do |p|
				print "%5d%s" % [ prime * p, p == 1 ? '|' : '' ]
			end

			puts "\n"
			puts '-' * n * 6 if prime == 1
		end
		'That\'s it folks!'
	end
end
