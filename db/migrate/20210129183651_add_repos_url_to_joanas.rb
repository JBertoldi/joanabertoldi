class AddReposUrlToJoanas < ActiveRecord::Migration[6.0]
  def change
    add_column :joanas, :repos_url, :string
  end
end
