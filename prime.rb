#!/usr/bin/ruby
# this program tells whether a number is prime or not

def prime(n)
	puts "That's not an integer." unless n.is_a? Integer
	is_prime = true
	for i in 2..n-1
		if n % i == 0
			is_prime = false
		end
	end
	if is_prime
		puts "#{n} is prime number"
	else
		puts "#{n} is not a prime number"
	end
end

prime(9)
prime(4)
prime(11)
prime(13)
