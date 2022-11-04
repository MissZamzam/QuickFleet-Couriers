class TrackingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :tracking_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
    def index 
        trackings = Tracking.all
        render json: trackings, status: :ok
    end 
    
    def show
        tracking = Tracking.find(id: params[:id])
        render json: tracking, status: :ok
    end

    def create
        tracking = Tracking.create!(tracking_params)
        render json: tracking, status: :created
    end

    def update 
        tracking = Tracking.find(id: params[:id])
        tracking.update!(tracking_params)
        render json: tracking, status: :ok
    end

    def tracking_params
        params.permit(:id, :user_id, :receipt_id, :pickup, :destination)
      end
    
      def unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end
    
      def tracking_not_found
        render json: { error: "tracking not found" }, status: :not_found
      end


end
