require 'directors_database'


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    director = nds[row_index][:name]
    movies = nds[row_index][:movies]
    movies_index = 0 
    money = 0 
    
    while movies_index < movies.length do
      some_money = movies[movies_index][:worldwide_gross]
      money += some_money
      movies_index += 1 
  end
  result[director] = money
  row_index += 1 
end
result
end


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
  directors_total = 0
  while row_index < director_data[:movies].length do
    directors_total += director_data[:movies][row_index][:worldwide_gross]
  row_index += 1
end
directors_total
end
