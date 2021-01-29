class AddGhCreatedAtToCommits < ActiveRecord::Migration[6.0]
  def change
    add_column :commits, :gh_created_at, :datetime
  end
end
