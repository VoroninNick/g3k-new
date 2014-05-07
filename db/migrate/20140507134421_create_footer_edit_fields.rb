class CreateFooterEditFields < ActiveRecord::Migration
  def change
    create_table :footer_edit_fields do |t|
      t.text :about_us
      t.text :contacts
      t.text :footer

      t.timestamps
    end
  end
end
