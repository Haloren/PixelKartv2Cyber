class KartsController < ApplicationController
    before_action :set_user, only: [:index, :show, :new, :create, :destroy]
    before_action :authenticate

    def new
        @kart = Kart.new
        # byebug
        @kart.build_club 
    end

    def create
        @kart = Kart.new(kart_params)
        @kart.user_id = session[:user_id]

        if @kart.save
            redirect_to kart_path(@kart)
        else
            @kart.errors.full_messages
            render :new
        end
    end

    def destroy
        @kart = Kart.find_by(id: params[:id])
        @kart.destroy
        flash[:message] = " #{@kart.name} DELETED "
        redirect_to "/users/#{@user.id}"
    end

    def show
        # byebug
        @kart = Kart.find_by(id: params[:id])
        @ratings = @kart.reviews
    end

    private 

    def kart_params
        params.require(:kart).permit(:name, :driver, :body, :wheels, :club_id, club_attributes: [:name])
    end
end
