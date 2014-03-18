class Article < ActiveRecord::Base
  attr_accessible :content
  attr_accessible :image
  attr_accessible :title
  attr_accessible :url, :future_article

  attr_accessible :article_short_description

  has_attached_file :image

  #before_create :init_url
  #def init_url
  #  #self.url ||= self.title.parameterize
  #end

  before_validation :generate_article_url
  def generate_article_url
    self.url ||= title.parameterize
  end

  rails_admin do
    #label 'Article'
    #label_plural 'Articles'
    label 'Стаття'
    label_plural 'Статті'

    list do
      field :title
      field :future_article
      field :image
      field :content
    end

    edit do
      field :title
      field :future_article
      field :article_short_description
      field :content, :ck_editor do
        label 'image'
      end
      field :image, :paperclip do
        # whatever
      end
    end
  end
end




