class ContactUs < ActionMailer::Base
  default from: "support@voroninstudio.eu"
  default to: 	''

  def contact_us(contacts)
    @contacts = contacts
    to = []
    to = MailTo.first.feedback.split(',')
    mail(:template_path => 'mail_templates', :template_name => 'contact_us', :subject => "New message from your website!", to: to)
  end
end
