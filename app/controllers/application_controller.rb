class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :property_check, if: :authenticate_user!

  # before_action :configure_permitted_parameters, if: :devise_controller?
  #
  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :is_host
  #   devise_parameter_sanitizer.for(:account_update) << :is_host
  # end


    def property_check
      #TODO: 毎回リクエストするよりもcookieに情報を保持したほうがいい気がする
      @has_properties = Property.where(user_id: current_user.id)
    end
end
