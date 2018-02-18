class OrdersController < ApplicationController
	def index
		@orders = current_user.orders
	end

	def new 
		@order = current_user.orders.new
	end

	def create
		current_user.orders.create(order_params)
		redirect_to user_orders_path(current_user)
	end

	def show
		@order = current_user.orders.find(params[:id])
	end

	private

	def order_params
		params.require(:order).permit(:name)
	end
end