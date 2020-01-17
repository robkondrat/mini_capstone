require 'http'

system "clear"

puts 
puts "Welcome to the Store! ".center(50, " *")
puts
puts 

print "Select an option:"
puts


puts "     [1] Index"


user_input = gets.chomp

if user_input == "1"
  response = HTTP.get("http://localhost:3000/api/products")

end
