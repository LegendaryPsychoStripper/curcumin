class OrdersController < ApplicationController
  #respond_to :html, :xml, :json

  before_action :set_order, only: [:show, :edit, :update, :destroy]


  def multumim
  
  end
	
  def new
		@order=Order.new
		
    @products= Product.all

    @order.order_products.build
	end
	
	def show
    if user_signed_in? && @order.user_id == current_user.id || current_user.tip =="admin"
      
      @order
    else
      redirect_to root_path
    end
		
	end

	def edit
    if user_signed_in? && current_user.tip == nil || !user_signed_in?
      redirect_to root_path
    end
		@order
    @order_products=OrderProduct.where(order_id: @order.id )
		@products= Product.all
	end

	def index
    
    if user_signed_in? && current_user.tip == nil
      redirect_to root_path
      #@orders = Order.where(user_id: current_user.id)
    elsif user_signed_in? && current_user.tip == 'admin'  
      @orders = Order.all

      if params[:search]
          @orders = Order.search(params[:search]).order("created_at DESC")
      else
          @orders = Order.all.order('created_at DESC')
      end
    else
      redirect_to root_path
    end

   

	end

	def create
    if params[:save_details] == '1'
      @user=User.find(order_params[:user_id])
      @user.update(order_params.except(:order_products_attributes,:mesaj,:user_id))
    end
    transport = 'false'
    pret = 0

    order_params[:order_products_attributes].each do |key, value|
      @product=Product.find(value[:product_id])
      @product.stoc = @product.stoc.to_i - value[:numar].to_i
      if @product.save
      pret = pret + value[:numar].to_i*Product.find(value[:product_id]).pret 
      else
        redirect_to :back, alert:'Stoc epuizat!' and return
      end
    end

    if pret ==0
      redirect_to :back, alert:'Trebuie sa adaugi produse!' and return
    end

    if user_signed_in?
        pret = pret - pret*0.1
    end

    if pret <= 200
        pret = pret + 15
        transport = 'true'
     end

      


     @order = Order.create(order_params.except(:order_products_attributes).merge(pret: pret, transport: transport))
     order_params[:order_products_attributes].each do |key, value|
        
      if value[:numar] == ''
        value[:numar] = '0'
      end
         @order_product=OrderProduct.create(value.merge(order_id: @order.id))
      
     end
  
   #if @order.save
     ApplicationMailer.notification_on_create(@order).deliver_now
     redirect_to multumim_path, notice: 'Comanda efectuata!'
   #end
   
     #if @order.save else render :new
  	end

  def update
    pret = 0

    order_params[:order_products_attributes].each do |key, value|
      @order_product=OrderProduct.find_by(order_id: @order.id, product_id: value[:product_id])
    if @order_product.numar.to_i <= value[:numar].to_i
      
      @product=Product.find(value[:product_id])
      @product.stoc = @product.stoc.to_i - (value[:numar].to_i - @order_product.numar.to_i)
      if @product.save
      pret = pret + value[:numar].to_i*Product.find(value[:product_id]).pret 
      else
        redirect_to :back, alert:'Stoc epuizat!' and return
      end   
    
    else

      @product=Product.find(value[:product_id])
      @product.stoc = @product.stoc.to_i + (@order_product.numar.to_i - value[:numar].to_i)
      if @product.save
      pret = pret + value[:numar].to_i*Product.find(value[:product_id]).pret 
      else
        redirect_to :back, alert:'Stoc epuizat!' and return
      end

    end
    
    end

    if pret ==0
      redirect_to :back, alert:'Trebuie sa adaugi produse!' and return
    end

      if pret <= 200
        pret = pret + 15
      end

      if @order.user_id != nil
        pret = pret - pret*0.1
      end

    @order_products=OrderProduct.where(order_id: @order.id )
    if @order.update(order_params.except(:order_products_attributes).merge(pret: pret))
    order_params[:order_products_attributes].each do |key, value|
      if value[:numar] == ''
        value[:numar] = '0'
      end
      @order_products.where(id: value[:id]).update(value)
    end

      redirect_to :back, notice: 'Comanda editata'

    end

  end


  def destroy
    # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
    @order.destroy
    redirect_to :back, notice: 'Comanda anulata'
    #respond_with @order.destroy
	end

private

  def order_params
    #params.require(:order).permit!
    params.require(:order).permit(:nume,
     :prenume, :email, :telefon,
      :tara, :judet, :oras, :codpostal,
       :adresa, :mesaj, :user_id, order_products_attributes: [:id, :numar, :product_id, :_destroy])
    
   
  end

  def set_order

    @order = Order.find(params[:id])
    
  end
end

