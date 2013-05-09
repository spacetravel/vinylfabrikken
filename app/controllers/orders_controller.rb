#encoding:utf-8

class OrdersController < ApplicationController
  include OrdersHelper

  before_filter :authenticate_user!, :except => [:new, :choosepackage]


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
  
  def edit
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  def create
  	# set properties before creating an order

  	@order = Order.new(params[:order])

  	@order.order_number = "VF"+@order.id.to_s 
  	@order.order_date = Time.now
	  @order.order_status_id = 1
	  @order.payment_type = 1  	


    # lagre i mine ordre
    if params[:what_to_do] = "save_in_myorders"
    
      respond_to do |format|
  
        if @order.save

          if user_signed_in?
            # if user logged in
            @order.user_id = current_user.id

             format.html { redirect_to orders_path, notice: 'Bestilling er lagret' }
             format.json { render json: orders_path, status: :created, location: orders_path }
          else
            # if user not logged in
            session[:current_order_id] = @order.id

            format.html { redirect_to signin_path, notice: 'Logg inn eller registrer deg for å se dine bestillinger' }
            format.json { render json: signin_path, status: :created, location: signin_path }
          end
 
        else
          format.html { render action: "new" }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end

    # lagre i mine ordre og send til handlekurv
    elsif params[:what_to_do] = "send_to_cart"
      
      respond_to do |format|
        if @order.save
          format.html { redirect_to orders_path, notice: 'Bestilling sendt til Vinylfabrikken.' }
          format.json { render json: orders_path, status: :created, location: orders_path }
        else
          format.html { render action: "new" }
          format.json { render json: @order.errors, status: :unprocessable_entity }
        end
      end
    
    end
    
  end

  def update
    @order = Order.find(params[:id])
    if @order.update_attributes(params[:order])
      redirect_to(orders_path)
    else
      render "edit"
    end
  end

  def destroy
     Order.find(params[:id]).destroy
     redirect_to :action => 'index'
  end


  def choosepackage  
  
  end

  def move_to_shopping_cart
  end
  
end
