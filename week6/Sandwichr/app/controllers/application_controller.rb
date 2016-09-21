class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception


  # the before action, calls a method  before any action are started, 
  before_action :setup_devise_parameters, if: :devise_controller?
  										#
  protected						#
  										# 
  								# ---
  								#
  def setup_devise_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
