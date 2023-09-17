# The function my_string_index takes two parameters: haystack and needle.

def my_string_index(haystack, needle)
    index = 0
  
    while index < haystack.length
      if haystack[index] == needle
        return index
      end
      index += 1
    end
  
    return -1  # Return -1 if no match is found
  end

  #puts my_string_index("Hello", "l")
  #puts my_string_index("aaaaa", "b")
  #puts my_string_index("Hello World", "w")
  #puts my_string_index("Hello World", "W")
