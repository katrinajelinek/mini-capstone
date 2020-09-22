class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 2.0)
    end

    if params[:sort] == "price"
      if params[:sort_order] == "desc"
        @products = @products.order(price: :DESC)
      else
        @products = @products.order(:price)
      end
    else
      @products = @products.order(:id)
    end

    # Product.all
    # Products.where("price > ?", 100)
    # Products.all.order(price: :desc)
    # Products.count

    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      inventory: params[:inventory],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Succesfully deleted" }
  end
end
