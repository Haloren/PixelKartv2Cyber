class ClubsController < ApplicationController
    before_action :set_user, only: [:index, :show]

    def index
        @clubs = Club.all
        byebug
        if @clubuser = User.find_by(id: params[:user_id])
            @clubs = @clubuser.clubs
        else 
            "You currently are not a member of any clubs."
        end
    end

    def show
        @club = Club.find_by(id: params[:id])
    end

end
