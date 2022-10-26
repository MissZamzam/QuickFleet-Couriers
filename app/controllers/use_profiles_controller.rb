class UseProfilesController < ApplicationController
    # GET /rdeliveries
    def index
        user_profiles = User_Profile.all
        render json: user_profiles
    end
end
