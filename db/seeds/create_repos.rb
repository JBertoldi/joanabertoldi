require_relative 'get_json'

def collab_count(owner, repo_name)
  url = "https://api.github.com/repos/#{owner}/#{repo_name}/collaborators"

  get_json(url).count
end

def display_repo(repo)
  puts '    '
  puts repo.name.to_s
  puts repo.gh_created_at
  puts "=> #{repo.html_url}"

  sleep(2)
end

def create_repos(json)
  filtered_repos = %w[fit-food the-mob-club grandma-palooza cocktails-and-beverages one-piece-api]
  json.each do |repo|
    next unless filtered_repos.include?(repo[:name])

    Repo.create!(
      name: repo[:name],
      html_url: repo[:html_url],
      repo_owner: repo[:owner][:login],
      collaborators_count: collab_count(repo[:owner][:login], repo[:name]),
      gh_created_at: repo[:created_at],
      commits_url: repo[:commits_url].gsub('{/sha}', ''),
      joana_id: Joana.last.id
    )

    display_repo(Repo.last)
  end
end
