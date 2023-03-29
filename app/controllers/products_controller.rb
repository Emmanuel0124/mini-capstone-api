class ProductsController < ApplicationController
  def singular
    @product = Product.find_by(id: 6)
    render template: "products/show"
  end 
  
  def index 
    @products = Product.all 
    render template: "products/index"
  end
end 
