class MailTo < ActiveRecord::Base
  attr_accessible :callTo, :orderProduct, :feedback

  rails_admin do
    navigation_label 'Зворотній звязок'
    label 'Електронна скринька'
    label_plural 'Електронні адреси'

    list do
      field :callTo
      field :orderProduct
      field :feedback
    end

    edit do
      field :callTo do
        label 'Замовити дзвінок'
        help 'Введіть адрес електронної скриньки на який будуть відправлятись листи з форми - Замовити дзвінок.'
      end
      field :orderProduct do
        label 'Замовити товар'
        help 'Введіть адрес електронної скриньки на який будуть відправлятись листи з форми - Замовити товар.'
      end
      field :feedback do
        label 'Зворотній звязок'
        help 'Введіть адрес електронної скриньки на який будуть відправлятись листи з форми - Зворотній звязок.'
      end
    end

  end
end
