class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


def current_user
 User.where(id: session[:user_id]).first
end

def current_admin
Admin.find(session[:admin])
end

def admin?
	session[:admin]
end


def authenticate_admin
	unless admin?
		redirect_to root_path
	end
end

helper_method :current_admin
helper_method :admin?

helper_method :current_user



end
