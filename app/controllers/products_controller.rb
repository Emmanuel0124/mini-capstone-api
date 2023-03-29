class ProductsController < ApplicationController
  def singular
    render json: {message: "hello"}
  end 
end 
