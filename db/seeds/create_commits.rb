def display_commit(commit)
  puts commit.message
  puts commit.gh_created_at
  puts ' '
end

def create_commits(json, repo_id)
  json.each do |commit|
    next if commit[:author][:login] != Joana.last.username

    Commit.find_or_create_by(
      message: commit[:commit][:message],
      html_url: commit[:html_url],
      gh_created_at: commit[:commit][:author][:date],
      repo_id: repo_id
    )

    display_commit(Commit.last)
  end
end
