class FooterEditField < ActiveRecord::Base
  attr_accessible :about_us, :contacts, :footer

  rails_admin do
    navigation_label 'Footer'
    label 'Footer'
    label_plural 'Footer'

    list do
      field :about_us
      field :contacts
      field :footer

    end
    edit do
      field :about_us, :ck_editor do
        label 'Футер - про нас'
        help 'Увага! Заповнення вами цього поля впливає на HTML розмітку сторінки! Будьте уважні!'
      end
      field :contacts do
        label 'Футер - контакти'
        help 'Увага! Заповнення вами цього поля впливає на HTML розмітку сторінки! Будьте уважні!'
      end
      field :footer, :ck_editor do
        label 'Нижній правий кут футера'
        help 'Увага! Заповнення вами цього поля впливає на HTML розмітку сторінки! Будьте уважні!'
      end

    end
  end
end
