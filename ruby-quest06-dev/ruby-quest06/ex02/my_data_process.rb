def add_value_to_result(result, key, value)
    unless result[key].include?(value)
        result[key][value] = 0
      end
    result[key][value] += 1
  end
  
  def my_data_process(input)
    result = {"Gender" => {}, "Email" => {}, "Age" => {}, "City" => {}, "Device" => {}, "Order At" => {}}

  
    input.drop(1).each do |line|
      value = line.split(",")
      add_value_to_result(result, "Gender", value[0])
      add_value_to_result(result, "Email", value[4])
      add_value_to_result(result, "Age", value[5])
      add_value_to_result(result, "City", value[6])
      add_value_to_result(result, "Device", value[7])
      add_value_to_result(result, "Order At", value[9])
    end

    return result.to_json

end  
  
  # Example input data
  #input = [
    #"Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At",
    #"Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon",
    #"Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon",
    #"Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon",
    #"Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning",
    #"Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"
  #]
  
  # Process the input data
  #result = my_data_process(input)
  
  # Print the result
  #print result
  