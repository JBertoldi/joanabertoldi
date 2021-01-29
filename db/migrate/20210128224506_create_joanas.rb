class CreateJoanas < ActiveRecord::Migration[6.0]
  def change
    create_table :joanas do |t|
      t.string :name
      t.string :username
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
