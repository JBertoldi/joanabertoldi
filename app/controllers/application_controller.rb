class ApplicationController < ActionController::Base
  before_action :set_joana, :assign_env_variable

  private

  def set_joana
    @joana = Joana.last
  end

  def assign_env_variable
    gon.push(scrape_url: ENV['SCRAPE_URL'])
  end
end
