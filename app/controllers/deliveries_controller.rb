class DeliveriesController < ApplicationController



    def index
        deliveres = Delivery.all 
        render json: deliveres, status: :ok
    end
end
