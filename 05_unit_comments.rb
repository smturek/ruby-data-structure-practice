require 'pp'
require_relative 'curriculum'

# Require the Ruby file
#
# Print out the unit names with the comment counts
#
# Expected output
#
#   Orientation - 9
#   Rails Basics - 15
#   CRUD - 12

CURRICULUM[:units].each do |unit|
  count = 0
  unit[:lessons].each do |lesson|
    lesson[:occurrences].each do |date, cohort|
      count += cohort[:comments].count
    end
  end
  puts "#{unit[:name]} - #{count}"
end
