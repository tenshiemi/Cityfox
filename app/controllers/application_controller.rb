class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :require_login

  private
  def is_admin?
    current_user.role == "admin"
  end

  def is_owner?
    current_user.role == "owner"
  end

  def require_admin
  	unless is_admin?
      session[:return_to_url] = request.url if Config.save_return_to_url && request.get?
      self.send(Config.not_authenticated_action)
    end
  end

  def not_authenticated
    redirect_to login_url, :alert => "First log in to view this page."
  end

  helper_method :is_admin?, :require_admin, :is_owner?
end
