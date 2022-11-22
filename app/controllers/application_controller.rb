class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

          ##Adding extra field for register DEVISE GEM..
          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname, :lastname, :phonenumber, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstname, :lastname, :email, :phonenumber, :password, :current_password)}
          end


          ##Ensuring user logged_in
          def ensure_logged_in
                    redirect_to "/users/sign_in" unless current_user
          end   
end
