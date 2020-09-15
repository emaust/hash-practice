# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n^2)
# Space Complexity: O(n)
def grouped_anagrams(strings)

  string_hash = {}

  strings.each do |string|
 
    temp = string.chars.sort.join
    if string_hash.has_key?(temp)
      string_hash[temp] << string
    else
      string_hash[temp] = Array.new()
      string_hash[temp] << string
    end
    
  end
  return string_hash.values

end


# # This method will return the k most common elements
# # in the case of a tie it will select the first occuring element.
# # Time Complexity: O(n log n)
# # Space Complexity: O(n)
def top_k_frequent_elements(list, k)
  
  return [] if list.empty?
  ranked_hash = {}
  ranked = []

  list.each do |element|
    if ranked_hash.has_key?(element)
      ranked_hash[element] += 1
    else
      ranked_hash[element] = 1
    end
  end

  sorted = ranked_hash.sort_by { | k, v | -v }

  k.times do 
    max = sorted.shift
    ranked << max[0]
    k -= 1
  end

  return ranked  

end


# # This method will return the true if the table is still
# #   a valid sudoku table.
# #   Each element can either be a ".", or a digit 1-9
# #   The same digit cannot appear twice or more in the same 
# #   row, column or 3x3 subgrid
# # Time Complexity: ?
# # Space Complexity: ?
# def valid_sudoku(table)
#   raise NotImplementedError, "Method hasn't been implemented yet!"
# end


