class Banner < ActiveRecord::Base
  attr_accessible :title, :main_image, :layer1_image, :layer2_image, :description, :url

  has_attached_file :main_image, styles:{ large: "1980x450>"
  },url:'/assets/images/banner/main/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  #, styles:{ large: "787x450#"
  #}
  has_attached_file :layer1_image,url:'/assets/images/banner/layer#1/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  has_attached_file :layer2_image,url:'/assets/images/banner/layer#2/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  rails_admin do
    navigation_label 'Банери'
    label 'Слайд'
    label_plural 'Слайди'

    list do
      field :title
      field :layer1_image
      field :description
      field :url
    end

    edit do
      field :title
      field :main_image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 1980x450'
      end
      field :layer1_image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 800x800'
      end
      field :layer2_image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 310x274'
      end
      field :description, :ck_editor do

      end
    end
  end
end
