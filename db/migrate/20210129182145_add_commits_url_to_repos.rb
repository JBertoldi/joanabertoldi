class AddCommitsUrlToRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :commits_url, :string
  end
end
