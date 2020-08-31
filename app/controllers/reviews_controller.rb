class ReviewsController < ApplicationController
    before_action :set_user, only: [:index, :new, :create]
    
    def new
        @kart = Kart.find_by(id: params[:kart_id])
        # byebug
        @review = @kart.reviews.build 
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = session[:user_id]
        if @review.save
            redirect_to review_path
        else
            flash[:message] = @user.errors.full_messages
            render :new
        end        
    end

    def index
        @reviews = Review.all
        @karts = Kart.all
    end

    private

    def review_params
        params.require(:review).permit(:rating, :content, :user_id, :kart_id)
    end
end
