class AddWebsiteToRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :repos, :website_url, :string
  end
end
