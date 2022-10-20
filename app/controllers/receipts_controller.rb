class ReceiptsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :receipt_not_found

  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity

#   skip_before_action :authenticate, only: [:index, :show, :create, :update]

  # GET /receipts
  def index
    receipts = Receipt.all
    render json: receipts
  end

  #  GET /receipts/:id
  def show
    receipt = Receipt.find(params[:receipt_no])
    render json: receipt, status: :ok
  end

  # POST/receipts
  def create
    receipt = Receipt.create!(receipt_params)
    render json: receipt, status: :created
  end

  # PATCH /receipts/:id
  def update
    #find
    receipt = Receipt.find(params[:receipt_no])
    Receipt.update!(receipt_params)
    render json: receipt, status: :ok
  end

#   # DELETE /receipts/:id
#   def destroy
#     # find
#     receipt = Receipt.find(params[:receipt_no])
#     # delete
#     Receipt.destroy
#     head :no_content
#   end

  private

  def receipt_params
    params.permit(:id, :receipt_no, :sender_name, :receiver_name, :amount_paid, :nature_of_goods, :pickup, :destination, :delivery_id)
  end

  def unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def receipt_not_found
    render json: { error: "receipt not found" }, status: :not_found
  end
end
