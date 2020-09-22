class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.all
    render "index.json.jb"
  end

  def show
    @order = Order.find(params[:id])
    render "show.json.jb"
  end

  def create
    # product = Product.find_by(id: params[:product_id])
    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: (product.price * params[:quantity].to_i),
      # tax: (product.price * params[:quantity].to_i * 0.07),
      # total: (product.price.to_i * params[:quantity].to_i + product.price * params[:quantity].to_i * 0.07),
    )
    @order.subtotal = @order.product.price * @order.quantity
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }
    end
  end
end
