class Product < ApplicationRecord
  belongs_to :catagory_products
  has_many :orders
  def is_discounted?
    !(price >= 10)
    # if price > 10 
    # return false
    # else 
    # return true
  end
  def tax
    price * 0.09
  end 
  def total
    price + tax
  end
end 

