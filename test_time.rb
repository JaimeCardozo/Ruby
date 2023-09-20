#This test is about class time
require 'time'
time_now = Time.now
puts time_now
puts "Go!"
gets
time_later = Time.now
time_diferen =  time_later - time_now
puts time_diferen
time_integer = time_diferen.to_i
puts time_integer.is_a?(Integer)