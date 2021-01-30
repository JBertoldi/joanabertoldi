class AddEmailToJoanas < ActiveRecord::Migration[6.0]
  def change
    add_column :joanas, :email, :string
  end
end
