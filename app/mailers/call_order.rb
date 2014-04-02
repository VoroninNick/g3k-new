class CallOrder < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def call_order(call_order)
    @call_order = call_order
    to = []
    MailTo.all.each do | m |
      to.push(m.callTo)
    end
    mail(:template_path => 'mail_templates', :template_name => 'call_order', :subject => "New message from your website!", to: to)
  end
end
