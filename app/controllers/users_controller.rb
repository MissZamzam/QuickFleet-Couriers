class UsersController < ApplicationController

    before_action :authenticate_user!
    # after_filter :user_activity
    
    def show
        user= User.find_by(id: params[:id])
        render json: user

    end
    def index
        users = User.all
        render json: users
    end

    private

    # def this_user
       
    # end
end
