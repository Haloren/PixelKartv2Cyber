class ApplicationController < ActionController::Base
helper_method :current_user, :logged_in?, :set_user, :authenticate

private

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end

    def set_user
        @user = current_user
    end

    def authenticate
        redirect_to login_path if !logged_in?
    end

end