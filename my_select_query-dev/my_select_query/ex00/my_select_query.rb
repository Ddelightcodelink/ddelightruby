require 'csv'

class MySelectQuery
  def initialize(csv_content)
    @csv_content = csv_content
    @column_names = []
    @data = []
    process_csv_content
  end

  def column_names
    @column_names
  end

  def data
    @data
  end

  def where(column_name, criteria)
    result = []
    column_index = @column_names.index(column_name)
    
    @data.each do |row|
      if row[column_index] == criteria
        result << row.join(',')
      end
    end

    result
  end

  private

  def process_csv_content
    rows = CSV.parse(@csv_content)
    @column_names = rows.shift
    @data = rows
  end
end

=begin
csv_content = "name,year_start,year_end,position,height,weight,birth_date,college\nAndre Brown,2007,2009,F,6-9,245,May 12, 1981,DePaul University\nJohn Doe,2005,2007,G,6-2,190,July 20, 1983,Example University\nJane Smith,2009,2012,C,6-5,220,April 5, 1980,Test College"

csv_parser = MySelectQuery.new(csv_content)

# Finding rows where "name" matches "Andre Brown"
result = csv_parser.where("name", "Andre Brown")
puts result.inspect
=end
