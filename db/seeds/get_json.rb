def get_json(url, production: false)
  puts 'Getting response..'

  production ? url = "#{url}?page=1&per_page=1000" : url

  response = RestClient::Request.execute method: :get, url: url, user: ENV['GITHUB_USER'], password: ENV['GITHUB_SECRET']
  JSON.parse(response, symbolize_names: true)
end
