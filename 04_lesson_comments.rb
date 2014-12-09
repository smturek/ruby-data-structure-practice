require 'pp'
require 'json'

# Require json and parse the json file
#
# Print out the lesson names with the total number of comments
#
# Expected output
#
#   Orientation
#     Name Games - 3
#     Mind Maps - 4
#     Sequence Diagrams - 2
#   Rails Basics
#     Controllers - 5
#     Models - 0
#     Views - 8
#     Migrations - 2
#   CRUD
#     Create - 3
#     Read - 1
#     Update - 6
#     Delete - 2

file = File.read('curriculum.json')

data_hash = JSON.parse(file, symbolize_names: true)

data_hash[:units].each do |unit|
  puts unit[:name]
  unit[:lessons].each do |lesson|
    count = 0
    lesson[:occurrences].each do |date, cohort|
      count += cohort[:comments].count
    end
    puts "  #{lesson[:name]} - #{count}"
  end
end
