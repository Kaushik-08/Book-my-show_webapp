class HomeController < ApplicationController

    ##Checking that user was logedin or not 
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
