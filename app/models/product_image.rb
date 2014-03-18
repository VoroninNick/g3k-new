class ProductImage < ActiveRecord::Base
  attr_accessible :image, :alt_image, :description_image, :title_image

  has_attached_file :image

  belongs_to :product

end