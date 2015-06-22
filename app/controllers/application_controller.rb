class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_user_or_admin
  helper_method :authenticate_user


def authenticate_user
  unless current_user
    flash[:idiot] = "You must register or log in before you can do that!"
    session[:previous_page] = request.fullpath
    redirect_to sign_in_path
  end
end

def current_user
  Patient.find(session[:patient_id]) if session[:patient_id].present?
end

def current_user_or_admin(user)
  user == current_user || current_user.admin
end

end
