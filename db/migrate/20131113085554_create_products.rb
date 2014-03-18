class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.has_attached_file :image
      t.text :short_description
      t.text :description
      t.integer :price
      t.integer :product_code
      t.integer :category_id
      t.string :product_url

      t.timestamps
    end
  end
end
