require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
 result = {}
 index = 0
 
 while index < directors_database.length do
    key = directors_database[index][:name]
    result[key] = gross_for_director(directors_database[index])
    # need to pass the method we are accessing an argument  so director_data = directors_database[index]
    index += 1
 end
 result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
# pp directors_database

def gross_for_director(director_data)
 # director_data = directors_database[index]
 
  index = 0
  gross_total = 0

  while  index < director_data[:movies].length do
    gross_total += director_data[:movies][index][:worldwide_gross]
    index += 1
  end
  gross_total 
end



