class CreatePageContacts < ActiveRecord::Migration
  def change
    create_table :page_contacts do |t|
      t.string :title
      t.text :page_content

      t.timestamps
    end
  end
end
