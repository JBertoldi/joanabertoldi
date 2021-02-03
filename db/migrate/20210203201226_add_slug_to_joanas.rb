class AddSlugToJoanas < ActiveRecord::Migration[6.0]
  def change
    add_column :joanas, :slug, :string
    add_index :joanas, :slug, unique: true
  end
end
