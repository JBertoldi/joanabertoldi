class CreateCommits < ActiveRecord::Migration[6.0]
  def change
    create_table :commits do |t|
      t.string :message
      t.string :html_url
      t.references :repo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
