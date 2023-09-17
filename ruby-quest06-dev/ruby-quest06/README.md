# Welcome to Ruby Quest06
***

## Task
There are three tasks: `my_csv_parser`, `my_csv_data_transform` and `my_data_process`. The challenge is to transform a string following the CSV format to a 2d array, the second takes a string which contains data in CSV format and it will return an array of strings in CSV format with the column Email, Age and Order At transformed and last function takes a string array which is the output of the function `my_data_transform`, to return a json string of hash of hash.

## Description
The `split` method is used to divide the csv_content into an array of substrings using specified delimiter. The map method is used to iterate over array, and transform each element based on the expected format. The `my_data_transform` method takes a CSV content string, splits it into lines, and processes each line to transform the columns as required. The transformed rows are then added to the result array. The my_data_process function now uses `input.drop(1).each do |line|`: This line starts a loop that iterates over each element of the input array starting from the second element (index 1) because the first element is the header and not actual data.

## Installation
Install Ruby for Windows from rubyinstaller.org.

## Usage
Run each code by typing this command `ruby my_csv_parser.rb`, `ruby my_csv_data_transform.rb`, `ruby my_data_process.rb` respectively.
```
ruby filename.rb
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
