class ServicesController < ApplicationController

    # GET /services
    def index
        services = Service.all
        render json: services
    end

     # GET /deliveries/:id
     def show
        service = Service.find_by(id: params[:id])
        render json: service, status: :ok
    end

end
