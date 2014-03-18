class LineItem < ActiveRecord::Base

  def total_price
    product.price * quantity
  end

end