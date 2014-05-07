class CreateFriendlyCarousels < ActiveRecord::Migration
  def change
    create_table :friendly_carousels do |t|
      t.string :title
      t.has_attached_file :image
      t.text :link
      t.integer :order

      t.timestamps
    end
  end
end
