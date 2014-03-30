class CreateMailTos < ActiveRecord::Migration
  def change
    create_table :mail_tos do |t|
      t.string :callTo
      t.string :orderProduct
      t.string :feedback

      t.timestamps
    end
  end
end
