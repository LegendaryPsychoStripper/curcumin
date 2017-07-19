class ProductsController < ApplicationController
	before_action :set_product, only: [:edit, :update, :destroy]

	def create
	end

	def index
		@products = Product.all
	end


	def edit
		@product
	end

	def show
		@product
	end
#adauga stoc
	def update
		
		@product.stoc = product_params[:stoc].to_i
		@product.save
		redirect_to new_order_path
		

		
	end

	def destroy
	end

private

  def product_params
    params.require(:product).permit(:pret, :stoc, :nume)
  end

  def set_product
  	if current_user !=nil && current_user.tip == 'admin'
    	@product = Product.find(params[:id])
	else
		redirect_to root_path
	end
  end

end
