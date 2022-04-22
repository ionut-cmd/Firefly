class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
     protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

	protected
		def configure_permitted_parameters
		   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:firstname,:lastname,:thumbnail, :email, :password)}
		   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:firstname,:lastname,:thumbnail, :email, :password, :password_confirmation, :current_password)}
		end
end

