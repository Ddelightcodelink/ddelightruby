def my_levenshtein(string1, string2)
    if string1.length != string2.length
      return -1
        #raise ArgumentError, "Strands must have equal length"
    end
  
    differences = 0
    string1.length.times do |i|
      differences += 1 if string1[i] != string2[i]
    end
  
    differences
  end
  
  # Example usage:
  #string1 = "GAGCCTACTAACGGGAT"
  #string2 = "CATCGTAATGACGGCCT"
  #distance = my_levenshtein(string1, string2)
  #puts "Levenshtein distance: #{distance}"
  