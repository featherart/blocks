# Blocks, Procs and Lambdas are basically closures in Ruby.

# where would you use this?

class Person < ActiveRecord::Base
  scope :find_lazy, lambda {|id| where(:id => id)}
end

# In console I can call
Person.find_lazy(1)