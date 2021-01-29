class CreateDashboards < ActiveRecord::Migration[6.0]
  def change
    create_table :dashboards do |t|
      t.integer :contributions
      t.integer :repos_count
      t.references :joana, null: false, foreign_key: true

      t.timestamps
    end
  end
end
