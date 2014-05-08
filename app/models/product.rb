class Product < ActiveRecord::Base
  attr_accessible :name, :image, :short_description, :description, :price, :product_code, :category, :product_url, :category_id

  has_many :product_images

  validates_presence_of :price, :message => "Заповніть це поле! Поле не може бути пустим."

  accepts_nested_attributes_for :product_images, :allow_destroy => true
  attr_accessible :product_images_attributes#, :allow_destroy => true

  attr_accessible :product_size

  has_attached_file :image
  belongs_to :category

  before_validation :generate_product_url
  def generate_product_url
    self.product_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Продукт'
    label_plural 'Продукти'

    list do
      field :name
      field :product_url
      field :image
      field :short_description
      field :price
      field :product_code
    end

    edit do
      field :name
      field :category
      field :image, :paperclip do
      end
      field :product_images
      field :short_description
      field :description, :ck_editor do
      end
      field :product_size
      field :price
      field :product_code


    end
  end
end
