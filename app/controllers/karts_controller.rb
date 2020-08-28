class KartsController < ApplicationController

    def new
        @user = current_user
    end

    def create

    end

    def index
        @user = current_user
    end

end
