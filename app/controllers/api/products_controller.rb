class Api::ProductsController < ApplicationController
  def product_action
    @product = Product.find_by(id: 1)
    render "product.json.jb"
  end

  def second_product_action
    @product = Product.find_by(id: 2)
    render "product.json.jb"
  end

  def all_products_action
    @products = Product.all
    render "all.json.jb"
  end

  def any_product_action
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "product.json.jb"
  end
end
