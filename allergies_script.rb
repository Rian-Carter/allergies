#!/usr/bin/env ruby

require ('./lib/allergies.rb')

puts "Please enter your allergy number (between 1 and 255):"
scoring = gets.chomp
allergy = Allergies.new(scoring)
puts "You are allergic to:"
puts allergy.score