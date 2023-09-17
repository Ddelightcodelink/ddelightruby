def my_roman_numerals_converter(number)

    # Array of decimal numbers in descending order
    num = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    
    # Hash mapping decimal numbers to their corresponding Roman numerals
    roman_sym = { 1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M" }
    
    # Initialize an empty string to store the resulting Roman numeral
    roman_numeral = ""
    
    # Start with the largest decimal number (1000) and iterate through the num array
    i = 0
    
    while number > 0
        # Check if the current decimal number is smaller or equal to the remaining number
      if number >= num[i]
        # Append the corresponding Roman numeral to the result
        roman_numeral += roman_sym[num[i]]
        # Subtract the decimal number from the remaining number
        number -= num[i]
      else
        # Move to the next smaller decimal number
        i += 1
      end
    end
    
    # Return the resulting Roman numeral
    roman_numeral
  end
  
  #puts my_roman_numerals_converter(3549)
  