def my_data_transform(csv_content)
    result = []
    lines = csv_content.split("\n")
    result << lines[0] # Include the header line as-is
  
    for i in 1..lines.length-1
      row = lines[i].split(',')
      email = row[4].split("@").last
      age = get_age_group(row[5].to_i)
      order_at = get_order_time(row[9])
  
      transformed_row = row[0..3] + [email.split('@')] + [age] + row[6..8] + [order_at]
      result << transformed_row.join(',')
    end
  
    result
  end

  require 'csv'
  
  def get_email_provider(email)
    if email
        return email.split("@").last
    end
  end
  

  def get_age_group(age)
    if age.between?(1, 20)
      "1->20"
    elsif age.between?(21, 40)
      "21->40"
    elsif age.between?(41, 65)
      "41->65"
    elsif age.between?(66, 99)
      "66->99"
    end
  end
  
  require 'date'

def get_order_time(time)
  parsed_time = DateTime.parse(time, '%Y-%m-%d %H:%M:%S')
  hour = parsed_time.hour

  if hour.between?(6, 12)
    "morning"
  elsif hour.between?(12, 18)
    "afternoon"
  elsif hour.between?(18, 24) || hour.between?(0, 6)
    "evening"
  end
end

  
  #csv_content = "Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n"
  
  #print my_data_transform(csv_content)
  