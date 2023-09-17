##
##
## QWASAR.IO -- my_count_on_it
##
##
## @param {String[]} param_1
##
## @return {integer[]}
##


def my_count_on_it(param_1)
    param_1.map {|string| string.length}
end

#print my_count_on_it(["Hello", "World", "Ruby", "Programming"])