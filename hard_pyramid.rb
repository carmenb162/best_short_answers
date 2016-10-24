# When you run the file, enter a number after the file name as this passes necessary argument to ARGV
#
# Work with the same program as last time, except now we want it to make a real-deal double-sided pyramid!
#
#     **
#    ****
#   ******
#  ********
# **********
# If we call the program like this: ruby pyramid.rb 6
# It should print out a pyramid 6 rows tall.
# This problem was detailed here:  http://learn.wyncode.co/tasks/3607



height = ARGV[0].to_i
output = ""
height.times do |i|
  output << " " * (((height * 2) - ((i + 1) * 2)) / 2)
  output << "O" * ((i + 1) * 2)
  output << "\n"
end
puts output

