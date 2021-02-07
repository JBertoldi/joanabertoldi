class ChangeRepoOwnerToOwnerInRepos < ActiveRecord::Migration[6.0]
  def change
    rename_column :repos, :repo_owner, :owner
  end
end
