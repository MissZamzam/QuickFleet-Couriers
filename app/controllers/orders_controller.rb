class OrdersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :order_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity

  
  def index
    order = Order.all
    render json: order
  end

  def show
    order = find_order

    render json: order, status: 200
  end

  def new
    @order = Order.new
    # render json: order
  end

  def create
    order = Order.create!(order_params)
    puts "xxxxxxxxxxxxxxxx"
    render json: order, status: :created

    if order.save
     OrderMailer.with(order: order).new_order_email.deliver_now
      # puts x

      render json: { error: "Thank you for your order! We'll get contact you soon!"}
      redirect_to root_path
    else
      # flash.now[:error] = "Your order form had some errors. Please check the form and resubmit."
      render json: { error: "Your order form had some errors. Please check the form and resubmit." }, status: :not_found
 
      # render :json => { :errors => "Your order form had some errors. Please check the form and resubmit." }, :status => 420
      # render :new
    end
  end

  def update
    order = find_order
    order.update!(order_params)
    render json: order, status: :ok
    # if order.update(order_params)
    #   render json: order
    # else
    #   render json: order.errors, status: :unprocessable_entity
    # end
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
    params.require(:order).permit(:senderName, :receiverName, :natureOfGoods, :pickup, :destination, :use_profile_id)
  end

  def unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def order_not_found
    render json: { error: "order not found" }, status: :not_found
  end

end
