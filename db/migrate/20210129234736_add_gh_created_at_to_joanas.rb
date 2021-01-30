class AddGhCreatedAtToJoanas < ActiveRecord::Migration[6.0]
  def change
    add_column :joanas, :gh_created_at, :datetime
  end
end
