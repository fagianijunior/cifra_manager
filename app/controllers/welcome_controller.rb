class WelcomeController < ApplicationController
  def index
    @lastFiveMusicsAdded = Music.last(5)
  end
end