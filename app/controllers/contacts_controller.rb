class ContactsController < ApplicationController
  def contacts
    @contact = Contact.new
    @page_cont = PageContacts.order('updated_at asc').limit(1)
  end
  def new
    @contact = Contact.new
    render :template => "contacts/contacts"
  end
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Дякуємо, ваше повідомлення відіслане!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    render :template => 'contacts/contacts'
  end
end
