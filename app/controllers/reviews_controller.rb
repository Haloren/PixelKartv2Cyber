class ReviewsController < ApplicationController
    before_action :set_user, only: [:index]
    
    def index
        @reviews = Review.all
    end

end
