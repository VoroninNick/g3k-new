class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception



 def application
   #@call_order = Call_order.new
 end
 def new
   @call_order = Call_order.new
   #render :template => "contacts/contacts"
 end
 def create
   @call_order = Call_order.new(params[:call_order])
   @call_order.request = request
   if @call_order.deliver
     flash.now[:error] = nil
     flash.now[:notice] = 'Thank you for your message!'
   else
     flash.now[:error] = 'Cannot send message.'
     render :new
   end
 end
 def test
   render :action => "", :layout => ""
 end
  helper_method :get_order

  def get_order
    @call_order = Call_order.new(params[:call_order])
    return @call_order
  end
  def order

  end
 before_action :create_cart

 def create_cart
   session[:cart]=Cart.create if session[:cart].blank?
 end
 after_action :store_location

  def store_location
    session[:previous_url] = request.fullpath
  end
end
