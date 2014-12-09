require 'pp'
require_relative 'curriculum'

# Print out the name of each curriculum unit and all the lesson names
#
# Expected output
#
#   Orientation
#     Name Games
#     Mind Maps
#     Sequence Diagrams
#   Rails Basics
#     Controllers
#     Models
#     Views
#     Migrations
#   CRUD
#     Create
#     Read
#     Update
#     Delete


CURRICULUM[:units].each do |unit|
  puts unit[:name]
  unit[:lessons].each do |lesson|
    puts "  #{lesson[:name]}"
  end
end
