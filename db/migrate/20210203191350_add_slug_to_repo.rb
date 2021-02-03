class AddSlugToRepo < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :slug, :string
  end
end
