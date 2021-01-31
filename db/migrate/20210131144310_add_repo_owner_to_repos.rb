class AddRepoOwnerToRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :repo_owner, :string
  end
end
