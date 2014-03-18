class AboutUsController < ApplicationController
  def about_us
    @title = "Про нас"
    @order_call = Call_order.new
  end
  def new
    @order_call = Call_order.new
    render :template => "about_us/about_us"
  end
  def create
    @order_call = Call_order.new(params[:order_call])
    @order_call.request = request
    if @order_call.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
