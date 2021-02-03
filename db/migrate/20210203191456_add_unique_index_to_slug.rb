class AddUniqueIndexToSlug < ActiveRecord::Migration[6.0]
  def change
    add_index :repos, :slug, unique: true
  end
end
