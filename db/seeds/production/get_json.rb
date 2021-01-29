def get_json(url)
  puts 'Getting response..'

  response = RestClient.get("#{url}?page=1&per_page=1000")
  JSON.parse(response, symbolize_names: true)
end
