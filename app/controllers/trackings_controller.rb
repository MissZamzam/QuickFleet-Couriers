class TrackingsController < ApplicationController
    def index 
        @trackings = Tracking.all
        render json: @trackings, status: :ok
    end 
end
