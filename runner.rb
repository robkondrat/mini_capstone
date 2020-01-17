require 'http'

system "clear"

puts 
puts "Welcome to the Store! ".center(50, " *")
puts
puts 

print "Pick an option:"
user_input: gets.chomp

puts "     [1] See all games"
puts "     [2] Show game by id"

if user_input == "1"
  response = HTTP.get("http://localhost:3000/api/first_contact_url")
  fortunes = response.parse["message"]