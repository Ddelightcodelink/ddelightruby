# Welcome to My Levenshtein
***

## Task
This poject calculates the Qwasar version of a Levenshtein number between two words. The challenge is how to compare two strings and return the difference between them.

## Description
I declare `my_levenshtein` method that takes two strings as input (string1 and string2).  It first checks if the strings have equal length and return `-1` if they don't. Then, it iterates over each position in the strings and compares the characters at that position. If the characters differ, the differences count is incremented. Finally, the method returns the differences count, which represents the Levenshtein difference between the two strings. 

## Installation
Installation of ruby is a prerequisite to run the code. You can use `www.ruby-lang.org`

## Usage
The program is used to calculate difference between two strings by typing this command at the terminal `ruby my_levenshtein.rb`
```
ruby my_levenshtein.rb  "GAGCCTACTAACGGGAT" "CATCGTAATGACGGCCT"
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
