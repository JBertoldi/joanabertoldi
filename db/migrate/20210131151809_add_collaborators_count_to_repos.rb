class AddCollaboratorsCountToRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :collaborators_count, :integer, default: 0
  end
end
