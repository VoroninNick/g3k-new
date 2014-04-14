class HomeController < ApplicationController
  def index
    @title = "G3K - ІГРИ НОВОГО ПОКОЛІННЯ"
    @articles = Article.order('updated_at desc').limit(4)
    @product = Product.order('updated_at desc').limit(4)
    @banner = Banner.order('updated_at asc')
  end

  def buy_product
    BuyProduct.product_buy(params[:buy_product]).deliver
    # cart_id = params[:cart_id]
    # Cart.delete_all[cart_id: cart_id]
  end

  def contact_us
    ContactUs.contacts(params[:contact_us]).deliver
  end
  def call_order
    CallOrder.call_order(params[:call_order]).deliver
  end
end
