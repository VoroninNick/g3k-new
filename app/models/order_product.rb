class Order_product < MailForm::Base
  attribute :name,      :validate => true
  attribute :last_name
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :time_from
  attribute :time_to
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
        :subject => "Зворотній зв'язок",
        :to => "nazariy.papizh@gmail.com",
        :from => %("#{name}"  <#{email}>)
    }
  end
end