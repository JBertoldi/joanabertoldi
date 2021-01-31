require_relative '../get_json'
require_relative '../create_commits'

after 'development:repos' do
  repos = Joana.last.repos

  repos.each do |repo|
    url = repo.commits_url
    json = get_json(url)

    puts 'Creating commits..'
    create_commits(json, repo.id)

    puts 'Done'
  end
end
