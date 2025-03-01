require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# 1. Read the CSV file
CSV.foreach(filepath, headers: :first_row) do |row|
  # p row
  # p "#{row[0]} #{row[1]} plays the #{row[2]}"
  puts "#{row['First Name']} #{row['Last Name']} played #{row['Instrument']}"
end

# 2. Write the CSV file

#r - read only
#wb - write binary

CSV.open(filepath, 'wb') do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass"]
  csv << ["George", "Harrison", "Guitar"]
  # csv << ["Ringo", "Starr", "Drums"]
end
