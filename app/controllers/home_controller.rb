class HomeController < ApplicationController

  #before_filter :authenticate_user! , :except => [:index]

  def index
    if current_user
      render 'index'
    else
      render :layout => 'welcome'
    end
  end
end
