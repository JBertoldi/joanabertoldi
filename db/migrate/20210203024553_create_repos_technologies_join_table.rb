class CreateReposTechnologiesJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :repos, :technologies do |t|
      t.index :technology_id
      t.index :repo_id
    end
  end
end
