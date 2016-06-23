class OrdersController < ApplicationController

	before_filter :authenticate_user!

	def index
	end

	def show
	end

	def new
	end

	def create
		@product_id = Product.id
		@user_id = User(current_user)
		@total = Product.price
	end

	def destroy
	end

end
