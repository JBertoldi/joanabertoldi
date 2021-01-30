class AddReposCountToJoanas < ActiveRecord::Migration[6.0]
  def change
    add_column :joanas, :repos_count, :integer, default: 0
  end
end
