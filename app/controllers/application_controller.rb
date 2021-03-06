class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception
 #для того щоб не було ерору після ajax POST
 skip_before_filter  :verify_authenticity_token

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
  helper_method :friendly_logo
 def friendly_logo
   @friendly_carousel = FriendlyCarousel.order('updated_at asc')
   return @friendly_carousel
 end

 helper_method :footer_edit_page
 def footer_edit_page
   @fet = FooterEditField.order(":updated_at asc").limit(1)
   return @fet
 end

   helper_method :get_order_products

   def get_order_products
     @order_product = Order_product.new(params[:order_product])
     return @order_product
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

 helper_method :get_categories
 def get_categories
   @categories = Category.where(:parent_id => nil)
   return @categories
 end
  helper_method :bank_details

  def bank_details
    @page = BankDetails.order('updated_at asc').limit(1)
    return @page
  end
end
