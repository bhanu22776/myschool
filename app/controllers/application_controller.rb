class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :update_sanitized_params, if: :devise_controller?
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  
	def update_sanitized_params
	  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :image, :remote_image_url , :role, :email, :password, :password_confirmation)}
	end

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:account_update) { |u| u.permit!}
	end
end
