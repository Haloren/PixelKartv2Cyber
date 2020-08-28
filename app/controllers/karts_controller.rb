class KartsController < ApplicationController
    before_action :set_user, only: [:new, :index, :show]

    def new
    end

    def create
    end

    def index 
    end

    def show
        # byebug
        @kart = Kart.find_by(id: params[:id])
    end

end
