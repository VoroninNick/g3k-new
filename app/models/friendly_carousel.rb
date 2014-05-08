class FriendlyCarousel < ActiveRecord::Base
  attr_accessible :title, :image, :link, :order

  has_attached_file :image, styles:{ thumb: "205x112>"
  },url:'/assets/images/friendly_carousel/:id/image_:style.:extension',
                    path:':rails_root/public:url'
  rails_admin do
    navigation_label 'Банери'
    label 'Карусель'
    label_plural 'Карусель'

    list do
      field :title
      field :image
      field :link
      # field :order
    end
    edit do
      field :title
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 205 x 112'
      end
      field :link
      # field :order
    end
  end
end
