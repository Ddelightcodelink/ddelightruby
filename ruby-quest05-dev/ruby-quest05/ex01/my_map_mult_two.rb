##
##
## QWASAR.IO -- my_map_mult_two
##
##
## @param {Integer[]} param_1
##
## @return {integer[]}
##


def my_map_mult_two(param_1)
    i = 0
    result = [] # Create an empty array to store the updated values
  
    while i < param_1.length
      result << param_1[i] * 2 # Multiply each element by 2 and add it to the result array
      i += 1
    end
  
    return result # Return the updated array
  end

  #print my_map_mult_two([0, 1, 2, 3, 4, 5])
  
  
