class EcomOrdersController < ApplicationController
  before_action :set_ecom_order, only: %i[ show edit update destroy set_time ]

  # GET /ecom_orders or /ecom_orders.json
  def index
    @ecom_orders = EcomOrder.all
  end

  # GET /ecom_orders/1 or /ecom_orders/1.json
  def show
  end

  
  # GET /ecom_orders/new
  def new
    @ecom_order = EcomOrder.new
    @costumers_name = []
    @costumers_info = []
    Costumer.select{ |n| 
      s = [n.name, n.id, n.state]
      i = [n.adress, n.state, n.payment_prefer]
      @costumers_name.push(s)
      @costumers_info.push(i)

        }
        @products = []
        @products_names = []
        @products_prices = []
        Product.where(available: true).select{ |e| 
          @products.push(e)
          @products_names.push([e.name, e.id])
        }

  end

  # GET /ecom_orders/1/edit
  def edit
    @has_created = true
    @costumers_name = []
    @costumers_info = []
    Costumer.select{ |n| 
      s = [n.name, n.id]
      i = [n.adress, n.state, n.payment_prefer]
      @costumers_name.push(s)
      @costumers_info.push(i)
        }
  end

  # POST /ecom_orders or /ecom_orders.json
  def create
    @ecom_order = EcomOrder.new(ecom_order_params)

    respond_to do |format|
      if @ecom_order.save
        format.html { redirect_to ecom_order_url(@ecom_order), notice: "Ecom order was successfully created." }
        format.json { render :show, status: :created, location: @ecom_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ecom_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ecom_orders/1 or /ecom_orders/1.json
  def update
    respond_to do |format|
      if @ecom_order.update(ecom_order_params)
        format.html { redirect_to ecom_order_url(@ecom_order), notice: "Ecom order was successfully updated." }
        format.json { render :show, status: :ok, location: @ecom_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ecom_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ecom_orders/1 or /ecom_orders/1.json
  def destroy
    @ecom_order.destroy

    respond_to do |format|
      format.html { redirect_to ecom_orders_url, notice: "Ecom order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ecom_order
      @ecom_order = EcomOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ecom_order_params
      params.require(:ecom_order).permit(:price, :item_sku, :purchase_date, :platform_order_num, :sales_channel, :status, :customer_name, :customer_state, :shipped_at, :num_items_shipped, :paymethod_method)
    end
end
