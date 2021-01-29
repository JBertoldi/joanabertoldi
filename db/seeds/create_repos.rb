def display_repo(repo)
  puts '    '
  puts repo.name.to_s
  puts repo.gh_created_at
  puts "=> #{repo.html_url}"

  sleep(2)
end

def create_repos(json)
  json.each do |repo|
    Repo.create!(
      name: repo[:name],
      html_url: repo[:html_url],
      gh_created_at: repo[:created_at],
      commits_url: repo[:commits_url].gsub('{/sha}', ''),
      joana_id: Joana.first.id
    )

    display_repo(Repo.last)
  end
end
