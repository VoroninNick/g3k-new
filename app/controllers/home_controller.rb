class HomeController < ApplicationController
  def index
    @title = "G3K - ІГРИ НОВОГО ПОКОЛІННЯ"
    @articles = Article.order('updated_at desc').limit(4)
    @product = Product.order('updated_at desc').limit(4)
    @banner = Banner.order('updated_at asc')
  end

  def buy_product

    BuyProduct.product_buy(params[:buy_product]).deliver
  end
end
