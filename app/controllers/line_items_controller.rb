class LineItemsController < ActionController::Base
  def add_product
    @line_item = LineItem.new
    @line_item.cart_id = session[:cart].id
    @line_item.product_id = params[:product_id]
    @line_item.quantity = 1
    @line_item.save!
    redirect_to session[:previous_url]
  end

  def destroy_product(id)
    @line_item.delete_if {|product| product.product_id == id }
  end
end
