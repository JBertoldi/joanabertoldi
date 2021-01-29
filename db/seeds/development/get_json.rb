def get_json(url)
  puts 'Getting response..'

  response = RestClient.get(url)
  JSON.parse(response, symbolize_names: true)
end
