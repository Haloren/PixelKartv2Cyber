class KartsController < ApplicationController
    before_action :set_user, only: [:new, :index, :show, :destroy_kart]

    def new
    end

    def create
    end

    def index 
    end

    def show
        # byebug
        @kart = Kart.find_by(id: params[:id])
        @ratings = @kart.reviews
    end

    def destroy_kart
        @kart = Kart.find_by(id: params[:id])
        @kart.destroy
        flash[:message] = " #{@kart.name} DELETED "
        redirect_to @user_path
    end

    private 

        def kart_params
            parmas.require(:kart).permit(:name, :driver, :body, :wheels, :garage_id, :garage_attributes [:name])
        end
end
