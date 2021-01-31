require_relative '../get_json'
require_relative '../create_repos'

after 'development:joanas' do
  url = Joana.last.repos_url
  json = get_json(url, production: true)

  puts 'Creating repos..'
  create_repos(json)

  puts 'Done'
end
