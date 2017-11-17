class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Pundit
  after_action :verify_authorized, unless: :devise_controller?

   def after_sign_in_path_for(resource)
    redirect_to dashboard_path
   end
end
