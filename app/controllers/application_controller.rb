class ApplicationController < ActionController::Base
  before_action :set_joana

  private

  def set_joana
    @joana = Joana.last
  end
end
