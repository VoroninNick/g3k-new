class ContactUs < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	'nazariy.papizh@gmail.com'

  def contact_us(contacts)
    @contacts = contacts
    to = []
    MailTo.all.each do | m |
      to.push(m.feedback)
    end
    mail(:template_path => 'mail_templates', :template_name => 'contact_us', :subject => "New message from your website!", to: to)
  end
end
