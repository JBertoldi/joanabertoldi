class ReposController < ApplicationController
  def index
    @joana = Joana.find(1)
    @repos = Repo.date_ordered
  end

  def show
    @repo = Repo.find(params[:id])
  end
end
