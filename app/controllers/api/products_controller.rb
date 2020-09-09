class Api::ProductsController < ApplicationController
  def product_action
    @product = Product.find_by(id: 1)
    render "product.json.jb"
  end

  def all
    @products = Product.all
    render "all.json.jb"
  end
end
