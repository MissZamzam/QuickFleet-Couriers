class UsersController < ApplicationController

    before_action :authenticate_user!
    # after_filter :user_activity
    
    def show
        user= User.find_by(id: params[:id])
        render json: user

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
    def show
    #     # current_user = User.find(session[:user_id])
    #     # render json: current_user
       render json: current_user
<<<<<<< HEAD
=======
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
    end
    def index
        users = User.all
        render json: users
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
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
