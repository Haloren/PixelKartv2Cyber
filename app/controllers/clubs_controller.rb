class ClubsController < ApplicationController
    before_action :set_user, only: [:index, :show]

    def index
        @clubs = Club.all
    end

    def show
        @club = Club.find_by(id: params[:id])
        @karts = Kart.all
    end
end
