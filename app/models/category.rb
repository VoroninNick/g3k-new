class Category < ActiveRecord::Base
  attr_accessible :content, :image, :name, :parent_id, :article_description, :child_category_ids, :category_url

  has_many :child_categories, class_name: "Category",
           foreign_key: "parent_id"

  belongs_to :parent, class_name: "Category"

  has_many :products

  attr_accessible :products

  has_attached_file :image

  validates :name, :uniqueness => true, presence: true
  before_validation :generate_category_url
  def generate_category_url
    self.category_url ||= name.parameterize
  end

  rails_admin do
    #label 'Category'
    #label_plural 'Categories'
    label 'Категорія'
    label_plural 'Категорії'

    list do
      field :name
      field :parent
      #field :child_categories
      field :image
      field :content
      field :parent_id
    end

    edit do
      field :name
      #label 'Name'
      field :parent
      #label 'Parent category'
      #field :child_categories
      field :content, :ck_editor do
        #label 'image'
      end
      field :image, :paperclip do
        # whatever
      end
    end
  end
end
