class UsersController < ApplicationController

    before_action :authenticate_user!
    
    # def index
    #     user = User.all
    #     render json: user
    # end

    # def show
    # #     # current_user = User.find(session[:user_id])
    # #     # render json: current_user
    #    render json: current_user
    # end

    # def create
    #     user = User.create!(user_params)
    #     if user.valid?
    #         session[:user_id] = user.id
    #         render json: user, status: :created
    #     else
    #         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    #     end
    # end
    

    private

    def this_user
        current_user 
    end
end
