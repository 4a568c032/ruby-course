# Lesson 1: Outputting a String
require 'digest'

puts "Hello World!"

# Lesson 2: Prompting User Input

name = Digest::SHA2.hexdigest(gets)
puts "Hey, #{name}! Nice to meet you!"
