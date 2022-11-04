class OrdersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :order_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity
  def index
    render json: Order.all
  end
  def show
    order = find_order
    render json: order, status: 200
  end
  def create
    order = Order.create!(order_params)
    render json: order, status: :created
  end
  def update
    order = find_order
    order.update!(order_params)
    render json: order, status: :ok
  end
  def destroy
    order = find_order
    order.destroy
    head :no_content
  end
  private
  def find_order
    Order.find(params[:id])
  end
  def order_params
    params.permit(:senderName, :receiverName, :amountPaid, :natureOfGoods, :pickup, :destination)
  end
  def unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
  def order_not_found
    render json: { error: "order not found" }, status: :not_found
  end
end