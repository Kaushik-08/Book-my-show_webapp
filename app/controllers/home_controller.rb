class HomeController < ApplicationController
  def index
    @presence = 0
    current_user
    if current_user != nil
      @presence = 1
    else 
      @presence = 0
    end
  end
end
