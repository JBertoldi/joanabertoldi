require_relative '../get_json'
require_relative '../create_commits'

after 'production:repos' do
  repos = Joana.last.repos

  repos.each do |repo|
    url = repo.commits_url
    json = get_json(url, production: true)

    puts "Creating commits for #{repo.name} .."
    puts ' '
    create_commits(json, repo.id)

    puts 'Done'
  end
end
