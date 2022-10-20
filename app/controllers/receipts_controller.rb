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
    payment = Receipt.find(params[:receipt_no])
    render json: payment, status: :ok
  end

  # POST/receipts
  def create
    payment = Receipt.create!(payment_params)
    render json: payment, status: :created
  end

  # PATCH /receipts/:id
  def update
    #find
    payment = Receipt.find(params[:receipt_no])
    Receipt.update!(payment_params)
    render json: payment, status: :ok
  end

  # DELETE /receipts/:id
  def destroy
    # find
    payment = Receipt.find(params[:receipt_no])
    # delete
    Receipt.destroy
    head :no_content
  end

  private

  def payment_params
    params.permit(:id, :tenant_id, :invoice_no, :amount_paid, :date)
  end

  def unprocessable_entity(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def payment_not_found
    render json: { error: "payment not found" }, status: :not_found
  end
end
