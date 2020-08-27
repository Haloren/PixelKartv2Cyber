class SessionsController < ApplicationController

    def index
        @user = current_user
        if logged_in?
            redirect_to user_path(@user.id)
        else 
            redirect_to login_path
        end
    end

    def new

    end

    def create
        # byebug
        user = User.find_by(email: params[:user][:email])
        redirect_to user_path(user)

    end
    
    def destroy
        session.clear
        redirect_to root_path
    end
end