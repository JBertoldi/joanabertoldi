def display_commit(commit)
  puts '    '
  puts commit.message
  puts commit.gh_created_at

  sleep(2)
end

def create_commits(json, repo_id)
  json.each do |commit|
    next if commit[:author][:login] != Joana.last.username

    Commit.create!(
      message: commit[:commit][:message],
      html_url: commit[:html_url],
      gh_created_at: commit[:commit][:author][:date],
      repo_id: repo_id
    )

    display_commit(Commit.last)
  end
end
