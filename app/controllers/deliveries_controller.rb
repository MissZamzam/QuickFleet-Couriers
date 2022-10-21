class DeliveriesController < ApplicationController



    def index
        deliveres = Delivery.all 
        render json: deliveres, status: :ok
    end

    def show
        delivery = Delivery.find(id: params[:id])
        render json: delivery, status: :ok
    end

    def create
        delivery = Delivery.create!(delivery_params)
        render json: delivery, status: :created
    end

    def update
        delivery = Delivery.find(id: params[:id])
        delivery.update!(delivery_params)
        render json: delivery, status: :ok
    end

    private

    def delivery_params
        params.permit(:image_url, :category, :description)
    end
    

end
