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


    private

    def service_params
        params.permit(:image_url, :category, :description)
    end


end
