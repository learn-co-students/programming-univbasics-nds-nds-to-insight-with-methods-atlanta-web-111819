require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.each do |director|
    director_gross = gross_for_director(director)
    result[director[:name]] = director_gross
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  name = director_data[:name]
  total = 0
  director_data[:movies].each do |movie|
    total += movie[:worldwide_gross]
  end
  total
end
