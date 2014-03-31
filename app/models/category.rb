class Category < ActiveRecord::Base
  attr_accessible :content, :image, :name, :parent_id, :article_description, :child_category_ids, :category_url

  has_many :child_categories, class_name: "Category",
           foreign_key: "parent_id"

  belongs_to :parent, class_name: "Category"

  has_many :products

  attr_accessible :products

  has_attached_file :image, styles:{ large: "936x520#"
  },url:'/assets/images/category/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  validates :name, :uniqueness => true, presence: true
  before_validation :generate_category_url
  def generate_category_url
    self.category_url ||= name.parameterize
  end

  rails_admin do
    navigation_label 'Каталог'
    label 'Категорія'
    label_plural 'Категорії'

    list do
      field :name
      field :parent
      field :image
      field :content
    end

    edit do
      field :name
      field :parent
      field :content, :ck_editor do
        #label 'image'
      end
      field :image, :paperclip do
        label 'Зображення'
        help 'Розмір зображення 936x520'
      end
    end
  end
end
