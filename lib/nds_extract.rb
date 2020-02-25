$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum = 0
  director_data[:movies].each do |movie|
    sum += movie[:worldwide_gross]
  end
  return sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  puts nds[0]
  result = {}
  nds.each do |director|
    result[director[:name]] = gross_for_director(director)
  end
  result
end
