
class ProductsController < ApplicationController
	def index
	end

	def new
		@product=Product.new
		@categories= Category.all
	end

	def create
		@product= Product.new(post_params)
		params[:category_ids].each do |category_id|
			category = Category.find(category_id)
			@product.categories << category
		end

		if @product.save
			redirect_to products_path
		else
			render :new
		end

	end



	def update
	end

	private

	def post_params
  		params.require(:product).permit(:name, :price, :category_ids) #solo permite estos datos
  	end

  end
