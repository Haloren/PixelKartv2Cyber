class ReviewsController < ApplicationController
    before_action :set_user, only: [:index]
    
    def index
        @karts = Kart.all
        
    end

end
