class UsersController < ApplicationController

    before_action :authenticate_user!
    # after_filter :user_activity
    
    def show
        user= User.find_by(id: params[:id])
        render json: user

<<<<<<< HEAD
    def show
    #     # current_user = User.find(session[:user_id])
    #     # render json: current_user
       render json: current_user
=======
    end
    def index
        users = User.all
        render json: users
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
    end

    def destroy
        @message = "Signed out"
        sign_out(@user)
        render json: @message
    end

    
    private

    # def this_user
       
    # end
end
