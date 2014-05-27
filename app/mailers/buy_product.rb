class BuyProduct < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def product_buy(buy_product)
    @buy_product = buy_product
    to = []
    to = MailTo.first.orderProduct.split(',')
    # MailTo.all.each do | m |
    #   to.push(m.orderProduct)
    # end
    mail(:template_path => 'mail_templates', :template_name => 'buy_product', :subject => "New message from your website!", to: to)
  end
end