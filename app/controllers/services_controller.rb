class ServicesController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :service_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity


    # GET /services
    def index
        services = Service.all
        render json: services
    end

     # GET /services/:id
     def show
        service = Service.find_by(id: params[:id])
        render json: service, status: :ok
    end
    # POST/services
    def create
        service = Service.create!(service_params)
        render json: service, status: :created
    end
# PATCH /services/:id
def update
    service = Service.find(id: params[:id])
    service.update!(service_params)
    render json: service, status: :ok
end

 # DELETE /deliveries/:id
 def destroy
    service = Service.find(id: params[:id])
    Service.destroy
    head :no_content
end

    private

    def service_params
        params.permit(:image_url, :category, :description)
    end

    def unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def delivery_not_found
        render json: { error: "service not found" }, status: :not_found
      end
end
