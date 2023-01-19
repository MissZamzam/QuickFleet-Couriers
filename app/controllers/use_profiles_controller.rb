class UseProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :user_profile_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity


        # GET /userprofiles
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
        def index
            user_profiles = UseProfile.all
            render json: user_profiles
        end
        
<<<<<<< HEAD
=======
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
        # def index
        #     user_profiles = UseProfile.all
        #     render json: user_profiles
        # end
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======

>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d

        # GET /userprofiles/:id
        def show
            user_profile = UseProfile.find_by(id: params[:id])
            render json: user_profile, status: :ok
        end

        # POST/userprofile
        def create
<<<<<<< HEAD
<<<<<<< HEAD
            user_profile = UseProfile.create!(user_profile_params)
            render json: user_profile, status: :created
=======
=======
            user_profile = UseProfile.create!(user_profile_params)
            render json: user_profile, status: :created
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
            @user_profile = UseProfile.new(user_profile_params)
            @user_profile.user_id = 10
            @user_profile.save
            render json: user_profile, status: :ok
            # render json: user_profile, status: :created
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
        end

        # PATCH /user_profile/:id
        def update
<<<<<<< HEAD
<<<<<<< HEAD
            user_profile = UseProfile.find(id: params[:id])
=======
            user_profile = UseProfile.find(params[:id])
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
            user_profile = UseProfile.find(id: params[:id])
            user_profile = UseProfile.find(params[:id])
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
            user_profile.update!(user_profile_params)
            render json: user_profile, status: :ok
        end

        # DELETE /user_profiles/:id
        def destroy
<<<<<<< HEAD
<<<<<<< HEAD
            user_profile = UseProfile.find(id: params[:id])
            User_Profile.destroy
=======
            user_profile = UseProfile.find_by(id: params[:id])
            user_profile.destroy
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
            user_profile = UseProfile.find(id: params[:id])
            User_Profile.destroy
            user_profile = UseProfile.find_by(id: params[:id])
            user_profile.destroy
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
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
