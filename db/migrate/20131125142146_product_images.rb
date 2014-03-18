class ProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.integer :product_id
      t.has_attached_file :image
      t.string :alt_image
      t.string :description_image
      t.string :title_image

      t.timestamps
    end
  end
end
