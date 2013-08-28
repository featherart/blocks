# Procs are objects! 

# They are blocks of code that have been bound to a set of 
# local variables.
def good_times(factor)
  return Proc.new {|n| n*factor }
end

# creating the variable that is being bound to the Proc
ten_times = good_times(10)

# Once bound, the code may be called in different contexts  
# and still access those variables:
ten_times.call(4)


# The analog to this in JavaScript is:
var my_function = function(factor){
	return function(n){ return n * factor };
}

var ten_times = my_function(10);
ten_times(4);


# Simple map way
["hello", "there"].map do |word|
	word.upcase
end

# Symbol to Proc way
["hello", "there"].map(&:upcase)

p = Proc.new { |x| puts x*2 }
[1,2,3].each(&p) 