##
##
## QWASAR.IO -- my_csv_parser
##
##
## @param {String} param_1
## @param {String} param_2
##
## @return {string[][]}
##
require 'csv'

def my_csv_parser(csv_content, separator)
    csv_array = csv_content.split("\n").map do |element|
        element.split(separator)
    end
    csv_array
  end
  
  #csv_content = "a,b,c,e\n1,2,3,4\n"
  #separator = ","
  #result = my_csv_parser(csv_content, separator)
  #print result
  
  
  

