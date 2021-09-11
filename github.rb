require 'rest-client'
require 'json'

url = 'https://api.github.com/search/repositories?'
q = 'spotcode'
language = 'ruby'

response = RestClient.get "#{url}q=#{q}&language=#{language}"

puts JSON.parse(response.body)['items'][0]['full_name']