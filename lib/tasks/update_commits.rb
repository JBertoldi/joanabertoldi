require_relative "#{Rails.root}/db/seeds/get_json"
require_relative "#{Rails.root}/db/seeds/create_commits"

repos = Joana.last.repos

repos.each do |repo|
  url = repo.commits_url
  json = get_json(url, production: true)

  puts 'Creating commits..'
  create_commits(json, repo.id)

  puts 'Done'
end
