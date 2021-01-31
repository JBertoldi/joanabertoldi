class ReposController < ApplicationController
  def index
    @repos = @joana.repos.date_ordered.limit(3)
  end

  def show
    @repo = Repo.find(params[:id])
  end
end
