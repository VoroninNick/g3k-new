class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.has_attached_file :main_image
      t.has_attached_file :layer1_image
      t.has_attached_file :layer2_image
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
