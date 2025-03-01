require 'json'
require 'open-uri'

uri = 'https://api.github.com/users/Eric3133'

user_serialized = URI.open(uri).read
# p user_serialized
user = JSON.parse(user_serialized)
# p user
p user["login"]
p user["name"]
p user["public_repos"]
p user["followers"]
p user["following"]
