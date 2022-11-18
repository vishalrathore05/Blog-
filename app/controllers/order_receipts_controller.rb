class OrderReceiptsController < ApplicationController
  before_action :set_order_receipt, only: %i[ show edit update destroy ]

  # GET /order_receipts or /order_receipts.json
  def index
    @order_receipts = OrderReceipt.all
  end

  # GET /order_receipts/1 or /order_receipts/1.json
  def show
  end

  # GET /order_receipts/new
  def new
    @order_receipt = OrderReceipt.new
  end

  # GET /order_receipts/1/edit
  def edit
  end

  # POST /order_receipts or /order_receipts.json
  def create
    @order_receipt = OrderReceipt.new(order_receipt_params)

    respond_to do |format|
      if @order_receipt.save
        format.html { redirect_to order_receipt_url(@order_receipt), notice: "Order receipt was successfully created." }
        format.json { render :show, status: :created, location: @order_receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_receipts/1 or /order_receipts/1.json
  def update
    respond_to do |format|
      if @order_receipt.update(order_receipt_params)
        format.html { redirect_to order_receipt_url(@order_receipt), notice: "Order receipt was successfully updated." }
        format.json { render :show, status: :ok, location: @order_receipt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_receipts/1 or /order_receipts/1.json
  def destroy
    @order_receipt.destroy

    respond_to do |format|
      format.html { redirect_to order_receipts_url, notice: "Order receipt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_receipt
      @order_receipt = OrderReceipt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_receipt_params
      params.require(:order_receipt).permit(:medical_name, :Gst, :Email_address, :Time)
    end
end
