class UseProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :user_profile_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity


        # GET /userprofiles
        def index
            user_profiles = UseProfile.all
            render json: user_profiles
        end
        
        # def index
        #     user_profiles = UseProfile.all
        #     render json: user_profiles
        # end


        # GET /userprofiles/:id
        def show
            user_profile = UseProfile.find_by(id: params[:id])
            render json: user_profile, status: :ok
        end

        # POST/userprofile
        def create
            user_profile = UseProfile.create!(user_profile_params)
            render json: user_profile, status: :created
            @user_profile = UseProfile.new(user_profile_params)
            @user_profile.user_id = 10
            @user_profile.save
            render json: user_profile, status: :ok
            # render json: user_profile, status: :created
        end

        # PATCH /user_profile/:id
        def update
            user_profile = UseProfile.find(id: params[:id])
            user_profile = UseProfile.find(params[:id])
            user_profile.update!(user_profile_params)
            render json: user_profile, status: :ok
        end

        # DELETE /user_profiles/:id
        def destroy
            user_profile = UseProfile.find(id: params[:id])
            User_Profile.destroy
            user_profile = UseProfile.find_by(id: params[:id])
            user_profile.destroy
            head :no_content
        end

        private

        # def set_profile
        #     @profile =UseProfile.find(params[:id])
        # end

        def user_profile_params
            params.permit(:avatar, :firstName, :lastName, :telephone, :location)
        end

        def unprocessable_entity(invalid)
            render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
        end

        def delivery_not_found
            render json: { error: "user_profile not found" }, status: :not_found
        end

end
