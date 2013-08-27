# a lambda is an anonymous function
# the most simple use of a lambda is as follows
palindrome = lambda { "madam im adam".reverse }

# test it out with l.call


# to use a counter in a lambda it goes in a pipe
# this function returns any number returned to it by 1
the_next_one = lambda { |int| return int.next }

# test it out with l.call 4

# what if your lambda function needs more than one line?
# wrap it in a do/end block
beer_on_wall = lambda do 
	(0..10).each do |i|
		puts i.to_s + " bottles of beer on the wall"
	end
end

# l.call

luftbaloons = lambda do 
	99.downto 1 do |i|
		puts i.to_s + " luft balloons"
	end
end

problems = lambda do
	1.upto 99 do |i|
		puts "I have #{i} problems, but a lambda ain't one"
	end
end


# what if I want this code bundled up and passed to an object?
class Person
	def initialize
	end
	def sing(song)
		song.call
	end
end

