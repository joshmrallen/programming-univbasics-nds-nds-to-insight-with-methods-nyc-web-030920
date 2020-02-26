$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  total_worldwide_gross = 0
  director_index = 0
 
  while director_index < director_data.count do
    movie_index = 0
    while movie_index < director_data[director_index][:movies].count do
      
      total_worldwide_gross += director_data[director_index][:movies][movie_index][:worldwide_grosses]
      
    movie_index += 1
    end
    director_index += 1
  end

  return total_worldwide_gross
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
