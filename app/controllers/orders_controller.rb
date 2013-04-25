class OrdersController < ApplicationController
  include OrdersHelper

  before_filter :authenticate_user!, :except => [:index]


  def index
    
    @orders = current_user.orders

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end
  

  def new
    @order = Order.new
    
    # Build order lines 

    @order.build_audio_master
    @order.build_gravering
    @order.build_matrix
    @order.build_testpress
    @order.build_pressing
    @order.build_labels
    @order.build_covers


    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @order }
    end
  end
  
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  def create
  	# set properties before creating an order

  	@order = Order.new(params[:order])

  	@order.order_number = 1234
  	@order.order_date = Time.now
	  @order.order_status_id = 1
	  @order.payment_type = 1  	
  	@order.user_id = current_user.id

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Bestilling sendt til Vinylfabrikken.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end

  end


  def choosepackage  
  
  end
  
end
