class CreateBankDetails < ActiveRecord::Migration
  def change
    create_table :bank_details do |t|
      t.text :page

      t.timestamps
    end
  end
end
