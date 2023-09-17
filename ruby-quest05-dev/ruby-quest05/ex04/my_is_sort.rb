##
##
## QWASAR.IO -- my_is_sort
##
##
## @param {Integer[]} param_1
##
## @return {boolean}
##


def my_is_sort(param_1)
    return true if param_1.empty? || param_1.length == 1

    ascending = true
    descending = true
    i = 0

    while i < param_1.length - 1
        if param_1[i] > param_1[i + 1]
            ascending = false
        end

        if param_1[i] < param_1[i + 1]
            descending = false
        end

        i += 1
    end
    
    return ascending || descending

end
  
=begin
array1 = [2, 1, -1]
array2 = [4, 7, 0, 3]
array3 = []
array4 = [1, 2, 3, 4, 5]
array5 = [4, 2, 7, 1, 5]

puts my_is_sort(array1)
puts my_is_sort(array2)
puts my_is_sort(array3)
puts my_is_sort(array4)
puts my_is_sort(array5)

=end