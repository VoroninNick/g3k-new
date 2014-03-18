class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :content
      t.has_attached_file :image
      t.integer :parent_id
      t.string :category_url

      t.timestamps
    end
  end
end
