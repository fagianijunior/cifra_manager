class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :set_global_search_variable
  before_action :set_repertoires
  before_action :set_repertoire_new

  def set_repertoires
    @repertoires = Repertoire.all
  end
  
  def set_repertoire_new
    @repertoire = Repertoire.new
  end
  
  def set_global_search_variable
    @q = Music.order(:title).search(params[:q])
  end
end
