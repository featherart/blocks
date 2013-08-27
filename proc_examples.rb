# Procs are objects! They are blocks of code that have been bound to a set of 
# local variables. Once bound, the code may be called in different contexts  
# and still access those variables:
def good_times(factor)
  return Proc.new {|n| n*factor }
end

# creating the variable that is being bound to the Proc
ten_times = good_times(10)

ten_times.call(4)


# The analog to this in JavaScript is:
var my_function = { some functionality you want assigned to variable }


["hello", "there"].map do |word|
	word.upcase
end

# or

["hello", "there"].map(&:upcase)