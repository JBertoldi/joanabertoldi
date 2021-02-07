module ReposHelper
  def collaborators_string(repo)
    collab_string = "<p class='collaborators'>Project created in a group of #{repo.collaborators_count.humanize}.</p>".html_safe
    collab_string if repo.collaborative?
  end
end
