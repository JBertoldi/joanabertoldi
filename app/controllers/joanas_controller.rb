class JoanasController < ApplicationController
  def show
    @joana = Joana.find(1)
  end
end
