require "http"

response = HTTP.get("http://localhost:3000/api/all_movies")

puts response
