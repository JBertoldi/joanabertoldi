class ReposController < ApplicationController
  def index
    @repos = @joana.repos.commit_ordered
    @primary_repos = @repos.limit(3)
    @secondary_repos = @repos.last(2)
  end

  def show
    @repo = Repo.find(params[:id])
  end
end
