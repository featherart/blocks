# everything in Ruby is an object, right?
# wrong - blocks are not objects

# basic block syntax differs from lambdas in that there is no "lamdba"
# other than that, what is different?
# for one thing there is the word "def" 
def bank_block(number)
	return "There are " + number.to_s + " dollars in my bank account"
end

# call with bank_block(90)

# or you can call with a block of code!

