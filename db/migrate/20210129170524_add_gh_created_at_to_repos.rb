class AddGhCreatedAtToRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :gh_created_at, :datetime
  end
end
