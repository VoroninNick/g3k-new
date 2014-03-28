class BuyProduct < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def buy_product(buy_product)
    @buyProduct = buy_product
    to = []
    FeedbackEmail.all.each do | r |
      to.push(r.email)
    end
    #default to: to
    mail(:template_path => 'mail_templates', :template_name => 'buy_product', :subject => "New message from your website!", to: to)
    #render template: "mail_templates/call_order"
  end
end