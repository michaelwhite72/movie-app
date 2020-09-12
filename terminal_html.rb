require "http"


system "clear"

response = HTTP.get("http://localhost:3000/api/movies")

all = response.parse
puts all
puts ""

response = HTTP.get("http://localhost:3000/api/movies/2")

id = response.parse
puts id