require 'http'

system "clear"

puts 
puts "Welcome to the Store! ".center(50, " *")
puts
puts 

print "Pick an option:"
puts


puts "     [1] Call of Duty Modern Warfare"
puts "     [2] Forza Horizon 4"
puts "     [3] Super Smash Bros. Ultimate"
puts "     [4] Doom ETERNAL"
puts "     [5] Super Mario Party"
puts "     [6] Grand Theft Auto V"
puts "     [7] Assassin's Creed Oddyssey"

user_input = gets.chomp

if user_input == "1"
  response = HTTP.get("http://localhost:3000/api/products/1")
  @product = Product.find(params[:id])
  puts "Name: #{params[:name]}"
  puts "Price: #{params[:price]}"
  puts "Description: #{params[:description]}"
  puts "Image: #{params[:image_url]}"
elsif user_input == "2"
  response = HTTP.get("http://localhost:3000/api/products/2")
  ##
elsif user_input == "3"
  response = HTTP.get("http://localhost:3000/api/products/3")
elsif user_input == "4"
  response = HTTP.get("http://localhost:3000/api/products/4")
elsif user_input == "5"
  response = HTTP.get("http://localhost:3000/api/products/5")
elsif user_input == "6"
  response = HTTP.get("http://localhost:3000/api/products/6")
elsif user_input == "7"
  response = HTTP.get("http://localhost:3000/api/products/7")
end
