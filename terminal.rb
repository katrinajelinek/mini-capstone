require "http"

system "clear"
response = HTTP.get("http://localhost:3000/api/products/6")
response.parse
