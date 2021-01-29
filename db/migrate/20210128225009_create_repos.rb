class CreateRepos < ActiveRecord::Migration[6.0]
  def change
    create_table :repos do |t|
      t.string :name
      t.string :html_url
      t.integer :commits_count
      t.references :joana, null: false, foreign_key: true

      t.timestamps
    end
  end
end
