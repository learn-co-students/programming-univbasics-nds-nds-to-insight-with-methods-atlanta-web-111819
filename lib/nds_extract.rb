require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_final = {}
director_index = 0
while director_index < directors_database.length do
  director = directors_database[director_index][:name]
  film = 0
  director_gross = 0
  while film < directors_database[director_index][:movies].length do
    director_gross += directors_database[director_index][:movies][film][:worldwide_gross]
    film += 1
  end
  director_final[director] = director_gross
  director_index += 1
end

nil
director_final

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  film = 0
  director_gross = 0
  while film < director_data[:movies].length do
    director_gross += director_data[:movies][film][:worldwide_gross]
    film += 1
  end
  director_gross

end
