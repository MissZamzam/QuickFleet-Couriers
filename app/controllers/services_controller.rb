class ServicesController < ApplicationController

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


end
