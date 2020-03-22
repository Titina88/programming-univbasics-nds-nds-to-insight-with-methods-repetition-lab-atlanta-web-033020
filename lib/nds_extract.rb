$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end
 # Write this implementation
 
 
def list_of_directors(source)
  famous_directors = []
  index = 0 
    while index < source.length do 
#binding.pry
      famous_directors.push(source[index][:name])
      index += 1
    end
 famous_directors
end

def total_gross(source)
  grand_total_gross = 0
  director_in_total = directors_totals(source)
  mega_list_of_directors = list_of_directors(source)
 index = 0
   while index < mega_list_of_directors.length do 
    # binding.pry
    grand_total_gross += director_in_total[mega_list_of_directors[index]]
    index += 1
  end
  grand_total_gross
end
 # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total

