class AddDefaultToCommitsCountOnRepo < ActiveRecord::Migration[6.0]
  def change
    change_column_default :repos, :commits_count, from: nil, to: 0
  end
end
