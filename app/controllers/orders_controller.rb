#encoding:utf-8

class OrdersController < ApplicationController
  include OrdersHelper

  before_filter :authenticate_user!, :only => [:employee_orders]

  def index
    

    if current_user.nil?
      logger.debug "hvilken bestilling? " + session[:current_order_id].to_s
      @orders = Order.find_all_by_id(session[:current_order_id])
    else
      @orders = current_user.orders.reverse
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end
  
  def new

    # pricing logic

    @gravering_cat = PriceCategory.find_by_keyword('gravering')
    @gravering_prices = Price.where("price_category_id = ?",@gravering_cat.id)

    @gravering_prices.each do |price|

      case price.keyword1
      when "7"
        case price.keyword2
        when "45"
          @price_gravering_7_45 = price.price
        when "33"
          @price_gravering_7_33 = price.price
        end

      when "10"
        case price.keyword2
        when "45"
          @price_gravering_10_45 = price.price
        when "33"
          @price_gravering_10_33 = price.price
        end
      when "12"
        case price.keyword2
        when "45"
          @price_gravering_12_45 = price.price

        when "33"
          @price_gravering_12_33 = price.price

        end
      end
    end


    @matrix_cat = PriceCategory.find_by_keyword('matriser')
    @matrix_prices = Price.where("price_category_id = ?",@matrix_cat.id)

    @matrix_prices.each do |price|
      case price.keyword1
      when "7"
        @price_matriser_7 = price.price
      when "10"
        @price_matriser_10 = price.price
      when "12"
        @price_matriser_12 = price.price
      end
    end

    @testpress_cat = PriceCategory.find_by_keyword('provetrykk')
    @testpress_prices = Price.where("price_category_id = ?",@testpress_cat.id)

    @testpress_prices.each do |price|
      case price.keyword1
      when "7"
        case price.keyword2
        when "45"
          @price_testpress_7_45 = price.price
        when "33"
          @price_testpress_7_33 = price.price
        end

      when "10"
        case price.keyword2
        when "45"
          @price_testpress_10_45 = price.price
        when "33"
          @price_testpress_10_33 = price.price
        end
      when "12"
        case price.keyword2
        when "45"
          @price_testpress_12_45 = price.price
        when "33"
          @price_testpress_12_33 = price.price
        end
      end
    end


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
	  @order.payment_type = 1
    @order.order_status = OrderStatus.find_by_keyword("ingen")

    unless current_user.nil?
      @order.user_id = current_user.id
    else
      @order.user_id = 0
    end

    respond_to do |format|
      if @order.save

        session[:current_order_id] = @order.id
    
        format.html { redirect_to orders_path, notice: 'Lagret bestilling' }
        format.json { render json: orders_path, status: :created, location: orders_path }    


      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end       
  end

  def update
    @order = Order.find(params[:id])
    @order.order_status = OrderStatus.find_by_keyword("ingen")


    
    if @order.update_attributes(params[:order])
 
      unless current_user.nil?
        if current_user.employee 
          redirect_to :action => 'employee_orders'
        else
          redirect_to :action => 'index'
        end
    else
      redirect_to :action => 'index'
    end

    else
      render "edit"
    end
  end

  def destroy
    Order.find(params[:id]).destroy
     
    redirect_to(:back) 
  end


  def choosepackage  
  
  end

  def move_to_shopping_cart
  end

  def to_approval
      order = Order.find(params[:id])
      if order.user_id = current_user.id
        order.order_status = OrderStatus.find_by_keyword("tilgodkjenning")
        order.save!
      end
      redirect_to :action => 'index'
    
  end

  def approve
      order = Order.find(params[:id])
      if current_user.employee
        order.order_status = OrderStatus.find_by_keyword("godkjent")
        order.save!
      end
      redirect_to :action => 'employee_orders'
    
  end

  def employee_orders
    if current_user.employee
      unless params[:order_status_id].nil?      
        @orders = Order.where("order_status_id = ?", params[:order_status_id]).reverse
      else
        @orders = Order.all.reverse
      end
      @order_statuses = OrderStatus.all
    else
      redirect_to '/'      
    end
  end
  
end
