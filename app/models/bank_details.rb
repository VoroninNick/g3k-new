class BankDetails < ActiveRecord::Base
  attr_accessible :page

  rails_admin do
    navigation_label 'Редагування'
    label 'Банківські реквізити'
    label_plural 'Банківські реквізити'

    list do
      field :page
    end

    edit do
      field :page do
        label 'Банківські реквізити'
        help 'Увага! Заповнення вами цього поля впливає на HTML розмітку сторінки! Будьте уважні!'
      end
    end
  end
end
