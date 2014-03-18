class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :content
      t.string :title
      t.string :url
      t.has_attached_file :image
      t.text :article_short_description
      t.timestamps
    end
  end
end
