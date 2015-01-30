class WelcomeController < ApplicationController
  before_action :signed_in_user
  def index
    @lastFiveMusicsAdded = Music.last(5)
  end

  private
    def signed_in_user
      redirect_to(signin_path, alert: "Porfavor logue-se") unless signed_in?
    end
end