class UseProfilesController < ApplicationController
    # GET /userprofiles
    def index
        user_profiles = User_Profile.all
        render json: user_profiles
    end


    # GET /userprofiles/:id
    def show
        user_profile = User_Profile.find_by(id: params[:id])
        render json: user_profile, status: :ok
    end


    # POST/userprofile
    def create
        user_profile = User_Profile.create!(user_profile_params)
        render json: user_profile, status: :created
    end

 # PATCH /user_profile/:id
 def update
    user_profile = User_Profile.find(id: params[:id])
    user_profile.update!(user_profile_params)
    render json: user_profile, status: :ok
end
  


    # DELETE /user_profiles/:id
    def destroy
        user_profile = User_Profile.find(id: params[:id])
        User_Profile.destroy
        head :no_content
    end

    private

    def user_profile_params
        params.permit(:avatar, :name, :email, :telephone, :location)
    end

end
