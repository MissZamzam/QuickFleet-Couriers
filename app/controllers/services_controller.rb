class ServicesController < ApplicationController

    # GET /services
    def index
        services = Service.all
        render json: services
    end

end
