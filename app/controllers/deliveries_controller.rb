class DeliveriesController < ApplicationController



    def index
        deliveres = Delivery.all 
        render json: deliveres, status: :ok
    end

    def show
        delivery = Delivery.find(id: params[:id])
        render json: delivery, status: :ok
    end
end
